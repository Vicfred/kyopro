// vicfred
// https://atcoder.jp/contests/abc178/tasks/abc178_d
// dynamic programming
#include <cstdint>
#include <iostream>
#include <vector>

using namespace std;

int main() {
  constexpr int64_t MOD = 1'000'000'007;
  int64_t S;
  cin >> S;

  // dp[s]: number of ordered sequences with sum s,
  // where every term is at least 3, counted modulo MOD.
  // O(S^2) time and O(S) space.
  vector<int64_t> dp(S + 1);

  // One empty sequence, used to build a first term.
  dp[0] = 1;

  // Every predecessor has a smaller sum.
  for (int64_t s = 3; s <= S; ++s) {
    // Pull counts by choosing the sequence's last term.
    // Appending last to a sequence of sum s - last
    // produces a sequence of sum s.
    // Each resulting sequence has a unique last term.
    for (int64_t last = 3; last <= s; ++last) {
      dp[s] = (dp[s] + dp[s - last]) % MOD;
    }
  }

  // Count all valid sequences with the required sum.
  cout << dp[S] << endl;

  return 0;
}
