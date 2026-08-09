// vicfred
// https://atcoder.jp/contests/adt_medium_20231205_2/tasks/abc272_d
// bfs
#include <cstdint>
#include <iostream>
#include <queue>
#include <utility>
#include <vector>

using namespace std;

int main() {
  int64_t N, M;
  cin >> N >> M;

  // A move (dx, dy) is valid exactly when dx^2 + dy^2 = M.
  // Any useful displacement must stay between -(N - 1) and N - 1.
  vector<pair<int64_t, int64_t>> moves;

  for (int64_t dx = -(N - 1); dx <= N - 1; ++dx) {
    for (int64_t dy = -(N - 1); dy <= N - 1; ++dy) {
      if (dx * dx + dy * dy == M) {
        moves.push_back({dx, dy});
      }
    }
  }

  // dist[i][j] is the minimum number of moves needed to reach (i, j).
  // -1 means that the square has not been reached.
  vector<vector<int64_t>> dist(N, vector<int64_t>(N, -1));

  queue<pair<int64_t, int64_t>> q;

  dist[0][0] = 0;
  q.push({0, 0});

  while (!q.empty()) {
    int64_t i = q.front().first;
    int64_t j = q.front().second;
    q.pop();

    for (const auto &[dx, dy] : moves) {
      int64_t ni = i + dx;
      int64_t nj = j + dy;

      if (ni < 0 || ni >= N || nj < 0 || nj >= N) {
        continue;
      }

      // BFS reaches every square for the first time using a shortest path,
      // so there is no reason to visit an already reached square again.
      if (dist[ni][nj] != -1) {
        continue;
      }

      dist[ni][nj] = dist[i][j] + 1;
      q.push({ni, nj});
    }
  }

  for (int64_t i = 0; i < N; ++i) {
    for (int64_t j = 0; j < N; ++j) {
      if (j > 0) {
        cout << ' ';
      }
      cout << dist[i][j];
    }
    cout << endl;
  }

  return 0;
}
