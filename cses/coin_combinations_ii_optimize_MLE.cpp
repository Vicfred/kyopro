// vicfred
// https://cses.fi/problemset/task/1636/
// dynamic programming
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

  // Original 2D state:
  //
  // dp[i][j] is the number of combinations that produce sum j
  // using only the first i types of coins.
  //
  // Tracking which coin types are allowed prevents us from counting
  // different orderings separately. For example, 2 + 3 and 3 + 2
  // represent the same combination.
  //
  // The recurrence is:
  //
  // dp[i][j] = dp[i - 1][j] + dp[i][j - coin]
  //
  // where:
  //   dp[i - 1][j]      -> do not use the current coin.
  //   dp[i][j - coin]   -> use the current coin at least once.
  //
  // The full table uses O(n * x) memory:
  //
  // vector<vector<int64_t>> dp(n + 1, vector<int64_t>(x + 1));
  //
  // However, row i only depends on row i - 1 and on earlier values
  // of row i itself, so we only need two rows:
  //
  // previous[j] = dp[i - 1][j]
  // current[j]  = dp[i][j]
  vector<int64_t> previous(x + 1);
  vector<int64_t> current(x + 1);

  const int64_t MOD = 1e9 + 7;

  // Initially, previous represents dp[0].
  //
  // There is exactly one way to produce sum 0 using zero coin types:
  // choose no coins.
  previous[0] = 1;

  // previous[j] for j > 0 remains 0 because no positive sum can be
  // produced using zero coin types.

  for (const auto &coin : coins) {
    // Every DP row has dp[i][0] = 1: the empty combination is the
    // unique way to produce sum 0.
    current[0] = 1;

    for (int64_t j = 1; j <= x; ++j) {
      // Case 1: do not use the current coin at all.
      //
      // In the original 2D DP this is:
      //
      // dp[i][j] = dp[i - 1][j]
      //
      // previous is the row for i - 1, while current is the row
      // currently being constructed for i.
      current[j] = previous[j];

      // If the current coin is larger than j, it cannot be used.
      if (j - coin < 0) {
        continue;
      }

      // Case 2: use the current coin at least once.
      //
      // Remove one copy of the current coin. We then need to produce
      // j - coin, but we are still allowed to use this same coin again
      // because every coin type has unlimited copies.
      //
      // This is why the original recurrence uses dp[i][j - coin],
      // not dp[i - 1][j - coin].
      //
      // Since j - coin < j, current[j - coin] has already been computed
      // while scanning j from left to right.
      current[j] += current[j - coin];
      current[j] %= MOD;
    }

    // We have finished constructing the next DP row.
    //
    // Before the swap:
    //   previous = dp[i - 1]
    //   current  = dp[i]
    //
    // After the swap:
    //   previous = dp[i]
    //
    // so previous is ready to serve as the previous row when processing
    // the next coin type.
    swap(previous, current);
  }

  // After processing all coin types, previous represents dp[n].
  cout << previous[x] << endl;

  return 0;
}
