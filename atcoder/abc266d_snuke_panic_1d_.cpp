// vicfred
// https://atcoder.jp/contests/abc266/tasks/abc266_d
// dynamic programming, constant memory
#include <algorithm>
#include <array>
#include <cstdint>
#include <iostream>
#include <limits>

using namespace std;

int main() {
  int64_t N;
  cin >> N;

  constexpr int64_t POSITIONS = 5;
  constexpr int64_t NEG_INF =
    numeric_limits<int64_t>::min() / 4;
  using Row = array<int64_t, POSITIONS>;

  // dp[x]: maximum total caught by current_time,
  // ending at position x.
  Row dp;
  dp.fill(NEG_INF);
  dp[0] = 0;

  int64_t current_time = 0;

  // Events arrive in increasing time order, so
  // process each immediately without storing them.
  for (int64_t i = 0; i < N; ++i) {
    int64_t t, x, a;
    cin >> t >> x >> a;

    // No events occur before the one just read.
    // Advance one second at a time using movement only.
    while (current_time < t) {
      Row next{};

      for (int64_t position = 0; position < POSITIONS;
           ++position) {
        // Pull from staying or moving from a neighbor.
        next[position] = dp[position];
        if (position > 0) {
          next[position] =
            max(next[position], dp[position - 1]);
        }
        if (position + 1 < POSITIONS) {
          next[position] =
            max(next[position], dp[position + 1]);
        }
      }

      // Preserve the old values until the new row
      // is complete. Earlier rows are never needed.
      dp = next;
      ++current_time;
    }

    // Collect this reward only if its pit is reachable.
    if (dp[x] != NEG_INF) {
      dp[x] += a;
    }
  }

  // We may finish at any position.
  cout << ranges::max(dp) << endl;
  return 0;
}
