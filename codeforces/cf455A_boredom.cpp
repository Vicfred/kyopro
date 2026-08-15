// vicfred
// https://codeforces.com/problemset/problem/455/A
// dynamic programming
#include <algorithm>
#include <cstdint>
#include <iostream>
#include <vector>

using namespace std;

int main() {
  int64_t n;
  cin >> n;

  const int64_t maxima = 100'000 + 1;

  vector<int64_t> a(n + 1);
  vector<int64_t> count(maxima);
  for (int64_t i = 1; i <= n; ++i) {
    cin >> a[i];
    count[a[i]] += 1;
  }

  vector<int64_t> dp(maxima);
  dp[0] = 0;
  dp[1] = count[1];

  for (int64_t i = 2; i < maxima; ++i) {
    dp[i] = max(dp[i - 1], dp[i - 2] + count[i] * i);
  }

  cout << dp[maxima - 1] << endl;

  return 0;
}
