// vicfred
// https://atcoder.jp/contests/abc222/tasks/abc222_d
// dynamic programming
// TLE
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

  // Correct DP, but gets TLE on the full constraints.
  // For V = max_n + 1: O(N * V^2) time, O(N * V) space.
  int64_t max_n = max(A.back(), B.back());

  // dp[i][last]: valid non-decreasing sequences
  // of length i ending in last, counted modulo MOD.
  // Impossible states have count zero.
  vector<vector<int64_t>> dp(N + 1,
                             vector<int64_t>(max_n + 1));

  // Each allowed first value forms one sequence.
  for (int64_t last = A[0]; last <= B[0]; ++last) {
    dp[1][last] = 1;
  }

  // Each row depends only on the preceding row.
  for (int64_t i = 2; i <= N; ++i) {
    // The current value must satisfy its own bounds.
    for (int64_t last = A[i - 1]; last <= B[i - 1]; ++last) {
      // Pull counts from every previous value j <= last.
      // Appending last preserves non-decreasing order.
      // Each sequence has exactly one such predecessor.
      // Recomputing overlapping sums here causes TLE.
      for (int64_t j = 0; j <= last; ++j) {
        dp[i][last] += dp[i - 1][j];
        dp[i][last] %= MOD;
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
