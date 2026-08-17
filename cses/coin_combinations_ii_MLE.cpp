// vicfred
// https://cses.fi/problemset/task/1636/
// dynamic programming
// MLE
#include <cstdint>
#include <iostream>
#include <vector>

using namespace std;

int main() {
  int64_t n, x;
  cin >> n >> x;

  vector<int64_t> coins(n);
  for (int64_t i = 0; i < n; ++i) {
    cin >> coins[i];
  }

  // dp[i][j] is the number of combinations that produce sum j
  // using only the first i types of coins.
  //
  // Tracking which coin types are allowed prevents us from counting
  // different orderings separately. For example, 2 + 3 and 3 + 2
  // represent the same combination.
  //
  // This is the full 2D state. It is easy to understand, but uses
  // O(n * x) memory and will need to be optimized for the CSES limits.
  vector<vector<int64_t>> dp(n + 1, vector<int64_t>(x + 1));

  const int64_t MOD = 1e9 + 7;

  // There is exactly one way to produce sum 0: choose no coins.
  // This remains true regardless of how many coin types are available.
  for (int64_t i = 0; i <= n; ++i) {
    dp[i][0] = 1;
  }

  // dp[0][j] for j > 0 remains 0:
  // no positive sum can be produced using zero coin types.

  for (int64_t i = 1; i <= n; ++i) {
    for (int64_t j = 1; j <= x; ++j) {
      // Case 1: do not use the i-th coin at all.
      // Then we must produce j using only the first i - 1 coin types.
      dp[i][j] = dp[i - 1][j];

      if (j - coins[i - 1] < 0) {
        continue;
      }

      // Case 2: use the i-th coin at least once.
      //
      // Remove one copy of this coin and produce the remaining sum.
      // We stay in row i, rather than i - 1, because each coin type
      // may be used an unlimited number of times.
      //
      // Recurrence:
      // dp[i][j] = dp[i - 1][j] + dp[i][j - coins[i - 1]]
      dp[i][j] += dp[i][j - coins[i - 1]];
      dp[i][j] %= MOD;
    }
  }

  cout << dp[n][x] << endl;

  return 0;
}
