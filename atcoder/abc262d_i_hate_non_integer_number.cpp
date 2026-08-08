// vicfred
// https://atcoder.jp/contests/adt_medium_20231214_1/tasks/abc262_d
// dynamic programming, modular arithmetic, combinatorics
#include <cstdint>
#include <iostream>
#include <vector>

using namespace std;

int main() {
  const int64_t MOD = 998244353;

  int64_t N;
  cin >> N;

  vector<int64_t> A(N);
  for (int64_t i = 0; i < N; ++i) {
    cin >> A[i];
  }

  int64_t answer = 0;

  // Fix the final number of selected elements.
  for (int64_t k = 1; k <= N; ++k) {
    // dp[i][chosen][remainder]
    // Number of ways to choose 'chosen' elements among the first i
    // elements such that their sum is congruent to 'remainder' modulo k.
    vector<vector<vector<int64_t>>> dp(
        N + 1, vector<vector<int64_t>>(k + 1, vector<int64_t>(k, 0)));

    // Before processing anything, there is one way to choose nothing.
    dp[0][0][0] = 1;

    for (int64_t i = 0; i < N; ++i) {
      for (int64_t chosen = 0; chosen <= k; ++chosen) {
        for (int64_t remainder = 0; remainder < k; ++remainder) {
          int64_t ways = dp[i][chosen][remainder];

          // If this state is unreachable, there are no subsets to extend
          // from it, so both transitions below would only add zero.
          if (ways == 0) {
            continue;
          }

          // Do not choose A[i].
          dp[i + 1][chosen][remainder] += ways;
          dp[i + 1][chosen][remainder] %= MOD;

          // Choose A[i].
          if (chosen < k) {
            int64_t newRemainder = (remainder + A[i]) % k;
            dp[i + 1][chosen + 1][newRemainder] += ways;
            dp[i + 1][chosen + 1][newRemainder] %= MOD;
          }
        }
      }
    }

    // Exactly k elements, with sum divisible by k.
    answer += dp[N][k][0];
    answer %= MOD;
  }

  cout << answer << endl;
  return 0;
}
