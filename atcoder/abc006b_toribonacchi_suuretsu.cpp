// vicfred
// https://atcoder.jp/contests/abc006/tasks/abc006_2
// dynamic programming
#include <cstdint>
#include <iostream>
#include <vector>

using namespace std;

int main() {
  int64_t n;
  cin >> n;

  if (n <= 2) {
    cout << 0 << endl;
    return 0;
  }

  vector<int64_t> dp(n + 1);
  dp[1] = 0;
  dp[2] = 0;
  dp[3] = 1;

  for (int64_t i = 4; i <= n; ++i) {
    dp[i] = dp[i - 1] + dp[i - 2] + dp[i - 3];
    dp[i] %= 10007;
  }

  cout << dp[n] << endl;

  return 0;
}
