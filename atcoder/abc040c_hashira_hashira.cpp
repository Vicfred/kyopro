// vicfred
// https://atcoder.jp/contests/abc040/tasks/abc040_c
// dynamic programming
#include <algorithm>
#include <cstdint>
#include <cstdlib>
#include <iostream>
#include <vector>

using namespace std;

int main() {
  int64_t N;
  cin >> N;

  vector<int64_t> A(N);
  for (int64_t &a : A) {
    cin >> a;
  }

  // dp[i]: minimum cost to reach the i-th pillar.
  // Pillars are 1-based; their heights use A[i - 1].
  // O(N) time and space.
  //
  // No infinity sentinel is needed: every state is
  // assigned before use. Integer infinity() returns 0.
  vector<int64_t> dp(N + 1);

  // Start on pillar 1 without paying any cost.
  dp[1] = 0;

  // Pillar 2 can only be reached from pillar 1.
  dp[2] = abs(A[1] - A[0]);

  // Both predecessors are computed before this state.
  for (int64_t i = 3; i <= N; ++i) {
    // Pull DP: gather costs from both possible origins.
    // Every path ends with a jump of one or two pillars.
    const int64_t one_step =
      dp[i - 1] + abs(A[i - 1] - A[i - 2]);
    const int64_t two_steps =
      dp[i - 2] + abs(A[i - 1] - A[i - 3]);
    dp[i] = min(one_step, two_steps);
  }

  // Minimum cost to reach the final pillar.
  cout << dp[N] << endl;

  return 0;
}
