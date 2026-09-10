// vicfred
// https://atcoder.jp/contests/agc017/tasks/agc017_a
// dynamic programming
#include <array>
#include <cstdint>
#include <iostream>
#include <ranges>
#include <vector>

using namespace std;

int main() {
  int64_t N, P;
  cin >> N >> P;

  vector<int64_t> A(N + 1);
  for (auto& a : A | views::drop(1)) {
    cin >> a;
  }

  // dp[i][j]: subsets of the first i bags
  // whose total is congruent to j modulo 2.
  vector dp(N + 1, array<int64_t, 2>{});

  // The empty subset has an even total.
  // All other states initially have zero ways.
  dp[0][0] = 1;

  // Pull DP: each destination gathers contributions
  // from states in the completed previous row.
  for (int64_t i = 1; i <= N; ++i) {
    for (int64_t j = 0; j <= 1; ++j) {
      // Exclude bag i: the required remainder stays j.
      dp[i][j] = dp[i - 1][j];

      // Include bag i: the previous sum needs j - A[i].
      // Normalise its remainder to 0 or 1.
      dp[i][j] += dp[i - 1][((j - A[i]) % 2 + 2) % 2];
    }
  }

  // All N bags considered, with the requested remainder.
  cout << dp[N][P] << endl;
  return 0;
}
