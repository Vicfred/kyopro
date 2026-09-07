// vicfred
// https://atcoder.jp/contests/abc011/tasks/abc011_3
// dynamic programming, push dp
#include <algorithm>
#include <array>
#include <cstdint>
#include <iostream>
#include <set>
#include <vector>

using namespace std;

int main() {
  int64_t N;
  cin >> N;

  int64_t n1, n2, n3;
  cin >> n1 >> n2 >> n3;
  const set<int64_t> forbidden{n1, n2, n3};

  if (forbidden.contains(N)) {
    cout << "NO" << endl;
    return 0;
  }

  constexpr int64_t MAX_MOVES = 100;

  // dp[i][moves]: can we reach i from N in exactly
  // this many moves without visiting forbidden values?
  vector<array<char, MAX_MOVES + 1>> dp(N + 1);
  dp[N][0] = true;

  // Go downward so all larger sources have updated
  // row i before we propagate from it.
  for (int64_t i = N; i >= 0; --i) {
    for (int64_t moves = 0; moves < MAX_MOVES; ++moves) {
      if (!dp[i][moves]) {
        continue;
      }
      // Push: send reachability to smaller destinations.
      for (int64_t step = 1; step <= 3; ++step) {
        if (i - step >= 0 &&
            !forbidden.contains(i - step)) {
          dp[i - step][moves + 1] |= dp[i][moves];
        }
      }
    }
  }

  const bool answer = ranges::any_of(
    dp[0], [](char reachable) { return reachable != 0; });
  cout << (answer ? "YES" : "NO") << endl;
  return 0;
}
