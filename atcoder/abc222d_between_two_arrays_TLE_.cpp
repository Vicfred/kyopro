// vicfred
// https://atcoder.jp/contests/abc222/tasks/abc222_d
// dynamic programming, push dp
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

  // Correct DP, but gets TLE on the full constraints.
  // For V = max_n + 1: O(N * V^2) time, O(N * V) space.
  // dp[i][last]: valid non-decreasing sequences
  // of length i ending in last, counted modulo MOD.
  vector<vector<int64_t>> dp(N + 1,
                             vector<int64_t>(max_n + 1));

  // Each allowed first value forms one sequence.
  for (int64_t last = A[0]; last <= B[0]; ++last) {
    dp[1][last] = 1;
  }

  // Finish each row before using it as a source.
  // This is push DP: choose a source (i, last)
  // and send its count to every valid next state.
  for (int64_t i = 1; i < N; ++i) {
    for (int64_t last = A[i - 1]; last <= B[i - 1]; ++last) {
      // Append any allowed value that is at least last.
      for (int64_t next = max(last, A[i]); next <= B[i];
           ++next) {
        // Push the source count into this destination.
        // Add because several sources can reach it.
        dp[i + 1][next] += dp[i][last];
        dp[i + 1][next] %= MOD;
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
