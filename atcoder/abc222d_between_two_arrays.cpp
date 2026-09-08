// vicfred
// https://atcoder.jp/contests/abc222/tasks/abc222_d
// dynamic programming, pull dp
#include <algorithm>
#include <cstdint>
#include <iostream>
#include <vector>

using namespace std;

int main() {
  constexpr int64_t MOD = 998244353;
  int64_t N;
  cin >> N;

  vector<int64_t> A(N);
  for (int64_t &a : A) {
    cin >> a;
  }

  vector<int64_t> B(N);
  for (int64_t &b : B) {
    cin >> b;
  }

  int64_t max_n = max(A.back(), B.back());

  // dp[i][last]: valid non-decreasing sequences
  // of length i ending in last, counted modulo MOD.
  // Impossible states have count zero.
  // For V = max_n + 1: O(N * V) time and space.
  vector<vector<int64_t>> dp(N + 1,
                             vector<int64_t>(max_n + 1));

  // Each allowed first value forms one sequence.
  for (int64_t last = A[0]; last <= B[0]; ++last) {
    dp[1][last] = 1;
  }

  // Each row reads the preceding row without changing it.
  // This is pull DP: choose a destination (i, last)
  // and gather counts from its valid predecessors.
  for (int64_t i = 2; i <= N; ++i) {
    int64_t sum = 0;
    // Start at zero to include smaller previous endings.
    for (int64_t last = 0; last <= B[i - 1]; ++last) {
      // sum = dp[i - 1][0] + ... + dp[i - 1][last],
      // modulo MOD. These are all valid predecessors.
      // Reuse this prefix sum instead of recomputing it.
      sum = (sum + dp[i - 1][last]) % MOD;
      if (last >= A[i - 1]) {
        // Pull the gathered count into this destination.
        // Appending last preserves non-decreasing order.
        dp[i][last] = sum;
      }
    }
  }

  // Count all valid length-N sequences by ending value.
  int64_t answer = 0;
  for (int64_t last = 0; last <= max_n; ++last) {
    answer += dp[N][last];
    answer %= MOD;
  }
  cout << answer << endl;

  return 0;
}
