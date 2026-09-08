// vicfred
// https://atcoder.jp/contests/abc346/tasks/abc346_d
// dynamic programming
#include <algorithm>
#include <array>
#include <cstdint>
#include <iostream>
#include <limits>
#include <string>
#include <vector>

using namespace std;

int main() {
  int64_t N;
  cin >> N;

  string S;
  cin >> S;

  vector<int64_t> C(N);
  for (int64_t &cost : C) {
    cin >> cost;
  }

  constexpr int64_t INF =
    numeric_limits<int64_t>::max() / 4;

  // Each row is indexed by [equal_pairs][last_bit].
  using Row = array<array<int64_t, 2>, 2>;

  Row unreachable;
  for (auto &costs : unreachable) {
    costs.fill(INF);
  }

  // dp[i][pairs][b]: minimum cost for the first i
  // characters, with exactly pairs equal adjacent
  // pairs and final chosen bit b.
  vector<Row> dp(N + 1, unreachable);

  // One character has no adjacent pairs.
  const int64_t first_bit = S[0] - '0';
  dp[1][0][first_bit] = 0;
  dp[1][0][1 - first_bit] = C[0];

  // Process prefixes in increasing length because
  // row i depends only on row i - 1.
  for (int64_t i = 2; i <= N; ++i) {
    const int64_t digit = S[i - 1] - '0';

    for (int64_t pairs = 0; pairs <= 1; ++pairs) {
      for (int64_t b = 0; b <= 1; ++b) {
        const int64_t change_cost =
          (b == digit ? 0 : C[i - 1]);

        // Pull DP: fix the destination (i, pairs, b)
        // and gather costs from valid predecessors.
        //
        // Different bits preserve the pair count.
        int64_t best = dp[i - 1][pairs][1 - b];

        // Equal bits create the first pair.
        if (pairs == 1) {
          best = min(best, dp[i - 1][0][b]);
        }

        // Both predecessors choose the same new bit,
        // so they pay the same modification cost.
        if (best != INF) {
          dp[i][pairs][b] = best + change_cost;
        }
      }
    }
  }

  // Exactly one equal pair, with either final bit.
  cout << ranges::min(dp.back()[1]) << endl;
  return 0;
}
