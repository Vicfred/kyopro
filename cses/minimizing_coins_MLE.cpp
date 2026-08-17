// vicfred
// https://cses.fi/problemset/task/1634/
// dynamic programming
// MLE, RTE
//
// Full 2D DP version kept for understanding the recurrence.
// This uses O(n * x) memory and is too large for the CSES limits.
// The accepted version can compress the state to O(x) memory.
#include <algorithm>
#include <cstdint>
#include <iostream>
#include <limits>
#include <vector>

using namespace std;

int main() {
  int64_t n, x;
  cin >> n >> x;

  vector<int64_t> coins(n);
  for (int64_t i = 0; i < n; ++i) {
    cin >> coins[i];
  }

  // Use a large finite value instead of -1 so min() works naturally.
  // Dividing by 4 leaves plenty of room before overflow when adding 1.
  const int64_t infinity = numeric_limits<int64_t>::max() / 4;

  // dp[i][j] = minimum number of coins needed to make sum j
  // using only the first i coin types.
  //
  // Row 0 means no coin types are available.
  // Row i corresponds to coins[0], ..., coins[i - 1].
  vector<vector<int64_t>> dp(n + 1, vector<int64_t>(x + 1, infinity));

  // Sum 0 always requires 0 coins, regardless of which coin types
  // are available.
  for (int64_t i = 0; i <= n; ++i) {
    dp[i][0] = 0;
  }

  for (int64_t i = 1; i <= n; ++i) {
    for (int64_t j = 1; j <= x; ++j) {
      // Option 1: do not use the i-th coin type.
      // Everything possible with the first i - 1 types is still possible.
      dp[i][j] = dp[i - 1][j];

      // DP rows are 1-based by number of available coin types,
      // while coins is 0-based, hence coins[i - 1].
      //
      // We cannot take this coin if it exceeds j, or if the remaining
      // sum cannot be formed.
      if (j - coins[i - 1] < 0 ||
          dp[i][j - coins[i - 1]] == infinity) {
        continue;
      }

      // Option 2: use one coin of this type.
      //
      // Notice that this uses dp[i][...] rather than dp[i - 1][...].
      // We stay on the same row because every coin type may be used
      // an unlimited number of times.
      dp[i][j] = min(
          dp[i][j],
          dp[i][j - coins[i - 1]] + 1
      );
    }
  }

  // infinity means the target sum cannot be formed.
  if (dp[n][x] == infinity) {
    cout << -1 << endl;
  } else {
    cout << dp[n][x] << endl;
  }

  return 0;
}
