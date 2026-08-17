// vicfred
// https://codeforces.com/problemset/problem/1475/B
// dynamic programming
#include <cstdint>
#include <iostream>
#include <vector>

using namespace std;

int main() {
  const int64_t maxima = 1'000'000;

  // dp[x] = whether x can be represented using any number
  // of 2020s and 2021s.
  vector<char> dp(maxima + 1);

  // We can make 0 by choosing zero copies of both numbers.
  dp[0] = true;

  for (int64_t x = 1; x <= maxima; ++x) {
    if (x >= 2020 && dp[x - 2020]) {
      dp[x] = true;
    }

    if (x >= 2021 && dp[x - 2021]) {
      dp[x] = true;
    }
  }

  int64_t t;
  cin >> t;

  while (t--) {
    int64_t n;
    cin >> n;

    if (dp[n]) {
      cout << "Yes" << endl;
    } else {
      cout << "No" << endl;
    }
  }

  return 0;
}
