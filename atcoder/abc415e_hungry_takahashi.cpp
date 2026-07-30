// vicfred
// https://atcoder.jp/contests/adt_hard_20251106_1/tasks/abc415_e
// dynamic programming, grid
#include <algorithm>
#include <cstdint>
#include <iostream>
#include <limits>
#include <vector>

using namespace std;

int main() {
  int64_t H, W;
  cin >> H >> W;

  vector<vector<int64_t>> A(H, vector<int64_t>(W));
  for (int64_t i = 0; i < H; ++i) {
    for (int64_t j = 0; j < W; ++j) {
      cin >> A[i][j];
    }
  }

  vector<int64_t> P(H + W - 1);
  for (int64_t k = 0; k < H + W - 1; ++k) {
    cin >> P[k];
  }

  int64_t infinity = numeric_limits<int64_t>::max() / 4;
  vector<vector<int64_t>> dp(H, vector<int64_t>(W, infinity));

  for (int64_t i = H - 1; i >= 0; --i) {
    for (int64_t j = W - 1; j >= 0; --j) {
      int64_t netChange = A[i][j] - P[i + j];

      if (i == H - 1 && j == W - 1) {
        dp[i][j] = max<int64_t>(0, -netChange);
        continue;
      }

      int64_t nextRequired = infinity;

      if (i + 1 < H) {
        nextRequired = min(nextRequired, dp[i + 1][j]);
      }

      if (j + 1 < W) {
        nextRequired = min(nextRequired, dp[i][j + 1]);
      }

      dp[i][j] = max<int64_t>(0, nextRequired - netChange);
    }
  }

  cout << dp[0][0] << endl;
  return 0;
}
