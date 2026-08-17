// vicfred
// https://codeforces.com/problemset/problem/702/A
// dynamic programming
#include <algorithm>
#include <cstdint>
#include <iostream>
#include <vector>

using namespace std;

int main() {
  int64_t n;
  cin >> n;

  vector<int64_t> a(n);
  for (int64_t i = 0; i < n; ++i) {
    cin >> a[i];
  }

  // dp[i] = length of the longest strictly increasing
  // subarray that ends exactly at index i.
  vector<int64_t> dp(n);
  dp[0] = 1;

  int64_t maxima = 1;

  for (int64_t i = 1; i < n; ++i) {
    if (a[i] > a[i - 1]) {
      dp[i] = dp[i - 1] + 1;
    } else {
      dp[i] = 1;
    }

    maxima = max(maxima, dp[i]);
  }

  cout << maxima << endl;

  return 0;
}
