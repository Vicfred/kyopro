// vicfred
// https://atcoder.jp/contests/abc274/tasks/abc274_d
// dynamic programming
#include <cstdint>
#include <iostream>
#include <unordered_map>
#include <vector>

using namespace std;

int main() {
  int64_t N, x, y;
  cin >> N >> x >> y;

  vector<int64_t> movesX;
  vector<int64_t> movesY;

  // Moves alternate axes, starting horizontally.
  // Either sign on one axis allows either on the other,
  // so horizontal and vertical reachability are independent.
  for (int64_t i = 0; i < N; ++i) {
    int64_t z;
    cin >> z;
    if (i % 2 == 0) {
      movesX.push_back(z);
    } else {
      movesY.push_back(z);
    }
  }

  // dpX[i][coordinate]: reachable after exactly
  // the first i horizontal moves.
  // Missing keys are inserted as false by operator[].
  int64_t n = static_cast<int64_t>(movesX.size());
  vector<unordered_map<int64_t, bool>> dpX(
    n + 1, unordered_map<int64_t, bool>());

  // The first move is forced to the right.
  dpX[1][movesX[0]] = true;

  // Total movement is at most 10 * 1000 = 10,000.
  // This range therefore includes every reachable position.
  // For V = 2 * MAX_DIST + 1:
  // expected O(N * V) time and O(N * V) space.
  // Hash access is average O(1); false entries also occupy
  // space because operator[] inserts missing keys.
  constexpr int64_t MAX_DIST = 10'100;

  // Pull DP: choose a destination and check predecessors.
  // Each row depends only on the preceding row.
  for (int64_t i = 2; i <= n; ++i) {
    for (int64_t coordinate = -MAX_DIST;
         coordinate <= MAX_DIST; ++coordinate) {
      // Move right: predecessor + length = coordinate.
      dpX[i][coordinate] =
        dpX[i - 1][coordinate - movesX[i - 1]];

      // Move left: predecessor - length = coordinate.
      // Either predecessor makes this destination reachable.
      dpX[i][coordinate] |=
        dpX[i - 1][coordinate + movesX[i - 1]];
    }
  }

  // dpY[j][coordinate]: reachable after exactly
  // the first j vertical moves.
  int64_t m = static_cast<int64_t>(movesY.size());
  vector<unordered_map<int64_t, bool>> dpY(
    m + 1, unordered_map<int64_t, bool>());

  // Before any vertical moves, the coordinate is zero.
  dpY[0][0] = true;

  // Every vertical move may go up or down.
  // Pull from both predecessors in the completed prior row.
  for (int64_t j = 1; j <= m; ++j) {
    for (int64_t coordinate = -MAX_DIST;
         coordinate <= MAX_DIST; ++coordinate) {
      // Move up by the current length.
      dpY[j][coordinate] =
        dpY[j - 1][coordinate - movesY[j - 1]];

      // Move down by the current length.
      dpY[j][coordinate] |=
        dpY[j - 1][coordinate + movesY[j - 1]];
    }
  }

  // Both targets must be reachable after all their moves.
  // Interleaving the choices preserves every right angle.
  if (dpX[n][x] && dpY[m][y]) {
    cout << "Yes" << endl;
  } else {
    cout << "No" << endl;
  }

  return 0;
}
