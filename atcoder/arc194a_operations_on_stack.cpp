// vicfred
// https://atcoder.jp/contests/arc194/tasks/arc194_a
// dynamic programming
#include <algorithm>
#include <array>
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

  constexpr int64_t NEG_INF =
    numeric_limits<int64_t>::lowest() / 4;

  // The miraculous observation:
  // Any pending-count excursion from 0 back to 0,
  // staying positive in between, contributes zero.
  // It has equally many deletions and canceled appends.
  // Replace it with repeated 0 -> 1 -> 0 trips:
  // same positions consumed, same score added.
  // Thus an optimal path exists using only p = 0 or 1.
  //
  // dp[i][p]: best surviving sum after processing
  // the last i positions backward along these paths,
  // with p deletions waiting for earlier appends.
  // Unreachable states have value NEG_INF.
  // O(N) time and space; all rows are retained.
  vector<array<int64_t, 2>> dp(N + 1, {NEG_INF, NEG_INF});

  // No processed positions, no pending deletions.
  dp[0][0] = 0;

  // i counts processed positions, so it increases.
  // The next input value is A[N - 1 - i]:
  //   i = 0: A[N - 1]
  //   i = 1: A[N - 2]
  //   i = 2: A[N - 3]
  // Finish each row before using it as a source.
  for (int64_t i = 0; i < N; ++i) {
    const int64_t value = A[N - 1 - i];
    for (int64_t p = 0; p <= 1; ++p) {
      const int64_t score = dp[i][p];
      if (score == NEG_INF) {
        continue;
      }

      // Push DP: choose a reachable source (i, p)
      // and send its score to possible next states.
      // Keep the maximum when contributions meet.
      //
      // Operation       Next pending count   Added score
      // Delete, p = 0   1                    0
      // Append, p = 1   0                    0
      // Append, p = 0   0                    value

      if (p == 0) {
        // Delete: create one pending deletion.
        dp[i + 1][1] = max(dp[i + 1][1], score);

        // Append: no later deletion cancels this value.
        dp[i + 1][0] = max(dp[i + 1][0], score + value);
      } else {
        // Append: satisfy the pending deletion.
        // The canceled value contributes nothing.
        dp[i + 1][0] = max(dp[i + 1][0], score);
      }
    }
  }

  // Every deletion must be matched by an earlier append.
  cout << dp[N][0] << endl;

  return 0;
}
