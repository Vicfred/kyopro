// vicfred
// https://atcoder.jp/contests/arc194/tasks/arc194_a
// dynamic programming
// TLE, MLE
#include <algorithm>
#include <cstdint>
#include <iostream>
#include <limits>
#include <vector>

using namespace std;

int main() {
  int64_t N;
  cin >> N;

  vector<int64_t> A(N);
  for (int64_t &a : A) {
    cin >> a;
  }

  // Intentionally unoptimized for educational purposes.
  // Practice push DP before optimizing the state space.
  // Correct, but O(N^2) time and space exceed the limits.
  // The full table causes MLE on large inputs.
  constexpr int64_t NEG_INF =
    numeric_limits<int64_t>::min() / 4;

  // dp[i][p]: best surviving sum after processing
  // the last i input positions backward, with p
  // deletions still waiting for earlier appends.
  // Unreachable states have value NEG_INF.
  vector<vector<int64_t>> dp(
    N + 1, vector<int64_t>(N + 1, NEG_INF));

  // No processed positions, no pending deletions.
  dp[0][0] = 0;

  // i counts processed positions, so it increases.
  // The next input value is A[N - 1 - i]:
  //   i = 0: A[N - 1]
  //   i = 1: A[N - 2]
  //   i = 2: A[N - 3]
  // Finish each row before using it as a source.
  for (int64_t i = 0; i <= N - 1; ++i) {
    for (int64_t p = 0; p <= N; ++p) {
      // At most i deletions can come from i positions.
      if (p > i) {
        continue;
      }
      if (dp[i][p] == NEG_INF) {
        continue;
      }

      // Push DP: choose a reachable source (i, p)
      // and send its score to each possible next state.
      // Several sources may reach the same destination,
      // so keep the maximum instead of overwriting it.
      //
      // Operation       Next pending count   Added score
      // Delete          p + 1                0
      // Append, p > 0   p - 1                0
      // Append, p = 0   0                    A[N - 1 - i]

      // Choose delete: an earlier append must satisfy it.
      // Moving backward creates one pending deletion.
      dp[i + 1][p + 1] = max(dp[i + 1][p + 1], dp[i][p]);
      if (p == 0) {
        // Choose append: no later deletion cancels it.
        // Its value survives and contributes to the sum.
        dp[i + 1][p] =
          max(dp[i + 1][p], dp[i][p] + A[N - 1 - i]);
      } else {
        // Choose append: a pending deletion cancels it.
        // Satisfy one deletion without adding its value.
        dp[i + 1][p - 1] = max(dp[i + 1][p - 1], dp[i][p]);
      }
    }
  }

  // All positions processed; every deletion must have
  // an earlier append, so no pending deletions may remain.
  cout << dp[N][0] << endl;

  return 0;
}
