// vicfred
// https://codeforces.com/problemset/problem/189/A
// dynamic programming
#include <algorithm>
#include <cstdint>
#include <iostream>
#include <vector>

using namespace std;

int main() {
  int64_t n, a, b, c;
  cin >> n >> a >> b >> c;

  vector<int64_t> dp(n + 1, -1);

  dp[0] = 0;

  for (int64_t i = 1; i <= n; ++i) {
    if (i - a >= 0 and dp[i - a] != -1) {
      dp[i] = max(dp[i], dp[i - a] + 1);
    }

    if (i - b >= 0 and dp[i - b] != -1) {
      dp[i] = max(dp[i], dp[i - b] + 1);
    }

    if (i - c >= 0 and dp[i - c] != -1) {
      dp[i] = max(dp[i], dp[i - c] + 1);
    }
  }

  cout << dp[n] << endl;

  return 0;
}
