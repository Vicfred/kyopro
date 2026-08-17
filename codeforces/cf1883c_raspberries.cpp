// vicfred
// https://codeforces.com/problemset/problem/1883/C
// dynamic programming
#include <cstdint>
#include <iostream>
#include <limits>
#include <vector>

using namespace std;

int main() {
  int64_t t;
  cin >> t;

  while (t--) {
    int64_t n, k;
    cin >> n >> k;

    vector<int64_t> a(n + 1);
    for (int64_t i = 1; i <= n; ++i) {
      cin >> a[i];
    }

    const int64_t infinity = numeric_limits<int64_t>::max() / 4;

    // dp[i][r] = minimum number of operations after processing
    // the first i elements such that their product is r modulo k.
    vector<vector<int64_t>> dp(n + 1, vector<int64_t>(k, infinity));

    // The empty product is 1.
    dp[0][1] = 0;

    for (int64_t i = 1; i <= n; ++i) {
      for (int64_t r = 0; r < k; ++r) {
        if (dp[i - 1][r] == infinity) {
          continue;
        }

        // Trying more than k - 1 increments is unnecessary because
        // the possible residues modulo k would start repeating.
        for (int64_t x = 0; x < k; ++x) {
          int64_t value_remainder = (a[i] + x) % k;
          int64_t new_remainder = (r * value_remainder) % k;

          dp[i][new_remainder] = min(dp[i][new_remainder], dp[i - 1][r] + x);
        }
      }
    }

    cout << dp[n][0] << endl;
  }

  return 0;
}
