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

  // Push DP: distribute each source count to its
  // destinations by excluding or including the next bag.
  // Increasing i ensures each source row is complete.
  for (int64_t i = 0; i <= N - 1; ++i) {
    for (int64_t j = 0; j <= 1; ++j) {
      // Exclude bag i + 1: the remainder stays j.
      // Accumulate without erasing other contributions.
      dp[i + 1][j] += dp[i][j];

      // Include bag i + 1: add its biscuits to the sum.
      dp[i + 1][(j + A[i + 1]) % 2] += dp[i][j];
    }
  }

  // All N bags considered, with the requested remainder.
  cout << dp[N][P] << endl;
  return 0;
}
