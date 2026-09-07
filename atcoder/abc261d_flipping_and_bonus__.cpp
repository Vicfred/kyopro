// vicfred
// https://atcoder.jp/contests/abc261/tasks/abc261_d
// dynamic programming
#include <algorithm>
#include <cstdint>
#include <iostream>
#include <limits>
#include <vector>

using namespace std;

int main() {
  int64_t N, M;
  cin >> N >> M;

  vector<int64_t> X(N);
  for (int64_t &x : X) {
    cin >> x;
  }

  // Streaks without a bonus award zero extra money.
  vector<int64_t> bonus(N + 1, 0);
  for (int64_t i = 0; i < M; ++i) {
    int64_t c, y;
    cin >> c >> y;
    bonus[c] = y;
  }

  constexpr int64_t NEG_INF =
    numeric_limits<int64_t>::min() / 4;

  // dp[i][s]: best money after i tosses,
  // ending with exactly s consecutive heads.
  vector<vector<int64_t>> dp(
    N + 1, vector<int64_t>(N + 1, NEG_INF));
  dp[0][0] = 0;

  for (int64_t i = 1; i <= N; ++i) {
    // Tails reset any previous streak, keeping the money.
    for (int64_t s = 0; s < i; ++s) {
      dp[i][0] = max(dp[i][0], dp[i - 1][s]);
    }

    // Heads extend the previous streak by one.
    // The bonus depends on the new streak.
    for (int64_t s = 1; s <= i; ++s) {
      dp[i][s] =
        dp[i - 1][s - 1] + X[i - 1] + bonus[s];
    }
  }

  // The optimal sequence may end with any streak.
  cout << ranges::max(dp[N]) << endl;
  return 0;
}
