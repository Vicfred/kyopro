// vicfred
// https://codeforces.com/problemset/problem/489/B
// dynamic programming
#include <algorithm>
#include <cstdint>
#include <cstdlib>
#include <iostream>
#include <vector>

using namespace std;

int main() {
  int64_t n;
  cin >> n;

  vector<int64_t> boys(n);
  for (int64_t i = 0; i < n; ++i) {
    cin >> boys[i];
  }

  int64_t m;
  cin >> m;

  vector<int64_t> girls(m);
  for (int64_t i = 0; i < m; ++i) {
    cin >> girls[i];
  }

  sort(boys.begin(), boys.end());
  sort(girls.begin(), girls.end());

  // dp[i][j] = maximum number of couples using the first
  // i boys and the first j girls.
  vector<vector<int64_t>> dp(n + 1, vector<int64_t>(m + 1));

  for (int64_t i = 1; i <= n; ++i) {
    for (int64_t j = 1; j <= m; ++j) {
      // Either boy i is unused or girl j is unused.
      dp[i][j] = max(dp[i - 1][j], dp[i][j - 1]);

      // If the newest boy and girl are compatible, pair them.
      if (abs(boys[i - 1] - girls[j - 1]) <= 1) {
        dp[i][j] = max(dp[i][j], dp[i - 1][j - 1] + 1);
      }
    }
  }

  cout << dp[n][m] << endl;

  return 0;
}
