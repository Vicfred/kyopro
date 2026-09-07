// vicfred
// https://atcoder.jp/contests/abc266/tasks/abc266_d
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

  struct Snuke {
    int64_t t, x, a;
  };

  vector<Snuke> snukes(N);
  for (auto &[t, x, a] : snukes) {
    cin >> t >> x >> a;
  }

  constexpr int64_t POSITIONS = 5;
  constexpr int64_t NEG_INF =
    numeric_limits<int64_t>::min() / 4;
  using Row = array<int64_t, POSITIONS>;

  const int64_t last_time = snukes.back().t;

  vector<Row> bonus(last_time + 1);
  for (const auto &[t, x, a] : snukes) {
    bonus[t][x] = a;
  }

  // Each row starts unreachable. Only position 0
  // is reachable at time 0.
  Row unreachable;
  unreachable.fill(NEG_INF);
  vector<Row> dp(last_time + 1, unreachable);
  dp[0][0] = 0;

  // dp[t][x]: maximum total caught by time t,
  // ending at x, including any catch at time t.
  //
  // Process time upward: row t reads row t - 1.
  for (int64_t t = 1; t <= last_time; ++t) {
    for (int64_t x = 0; x < POSITIONS; ++x) {
      // Pull from every position that can reach x
      // in one second: x itself or either neighbor.
      dp[t][x] = dp[t - 1][x];
      if (x > 0) {
        dp[t][x] = max(dp[t][x], dp[t - 1][x - 1]);
      }
      if (x + 1 < POSITIONS) {
        dp[t][x] = max(dp[t][x], dp[t - 1][x + 1]);
      }

      // A reward can only be collected if x is
      // reachable at this time.
      if (dp[t][x] != NEG_INF) {
        dp[t][x] += bonus[t][x];
      }
    }
  }

  // We may finish at any position.
  cout << ranges::max(dp.back()) << endl;
  return 0;
}
