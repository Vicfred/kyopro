// vicfred
// https://atcoder.jp/contests/adt_all_20260717_1/tasks/abc261_d
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

  vector<int64_t> X(N + 1);
  for (int64_t i = 1; i <= N; ++i) {
    cin >> X[i];
  }

  // bonus[j] is the bonus received when the counter becomes exactly j.
  vector<int64_t> bonus(N + 1, 0);

  for (int64_t i = 0; i < M; ++i) {
    int64_t C, Y;
    cin >> C >> Y;
    bonus[C] = Y;
  }

  const int64_t NEGATIVE_INFINITY = numeric_limits<int64_t>::min() / 4;

  // dp[i][j] = maximum money after i tosses
  // when the current streak of heads is exactly j.
  vector<vector<int64_t>> dp(N + 1, vector<int64_t>(N + 1, NEGATIVE_INFINITY));

  // Before any tosses, we have no money and the counter is 0.
  dp[0][0] = 0;

  for (int64_t i = 0; i < N; ++i) {
    for (int64_t streak = 0; streak <= i; ++streak) {
      // Choose tails: the streak resets to 0 and we gain nothing.
      dp[i + 1][0] = max(dp[i + 1][0], dp[i][streak]);

      // Choose heads: the streak increases by 1.
      dp[i + 1][streak + 1] = max(dp[i + 1][streak + 1],
                                  dp[i][streak] + X[i + 1] + bonus[streak + 1]);
    }
  }

  int64_t answer = 0;

  for (int64_t streak = 0; streak <= N; ++streak) {
    answer = max(answer, dp[N][streak]);
  }

  cout << answer << endl;

  return 0;
}
