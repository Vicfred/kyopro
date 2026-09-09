// vicfred
// https://atcoder.jp/contests/abc040/tasks/abc040_c
// dynamic programming
#include <algorithm>
#include <cstdint>
#include <cstdlib>
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

  // dp[i]: minimum cost found so far to reach pillar i.
  // Pillars are 1-based; their heights use A[i - 1].
  // INF means no path to that pillar has been found yet.
  // O(N) time and space.
  constexpr int64_t INF =
    numeric_limits<int64_t>::max() / 4;
  vector<int64_t> dp(N + 1, INF);

  // Start on pillar 1 without paying any cost.
  dp[1] = 0;

  // All incoming jumps come from earlier pillars.
  // Thus dp[i] is final before we push from pillar i.
  // Every pillar is reachable, so dp[i] is finite here.
  for (int64_t i = 1; i < N; ++i) {
    // Push DP: choose a source and update its destinations.
    // Keep the minimum when different paths meet.

    // Jump one pillar: from height A[i - 1] to A[i].
    dp[i + 1] =
      min(dp[i + 1], dp[i] + abs(A[i - 1] - A[i]));

    // Jump two pillars, provided the destination exists.
    if (i + 2 <= N) {
      dp[i + 2] =
        min(dp[i + 2], dp[i] + abs(A[i - 1] - A[i + 1]));
    }
  }

  // All possible incoming jumps to pillar N are processed.
  cout << dp[N] << endl;

  return 0;
}
