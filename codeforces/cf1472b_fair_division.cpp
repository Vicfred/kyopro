// vicfred
// https://codeforces.com/problemset/problem/1472/B
// dynamic programming, 0/1 subset-sum
#include <cstdint>
#include <iostream>
#include <vector>

using namespace std;

int main() {
  int64_t t;
  cin >> t;

  while(t--) {
    int64_t n;
    cin >> n;

    vector<int64_t> a(n);
    int64_t total = 0;

    for (int64_t i = 0; i < n; ++i) {
      cin >> a[i];
      total += a[i];
    }

    // An odd total weight can never be divided equally.
    if (total % 2 != 0) {
      cout << "No" << endl;
      continue;
    }

    int64_t target = total / 2;

    // Original 2D state:
    // dp[i][w] = whether we can make weight w using the first i candies.
    //
    // Since row i only depends on row i - 1, we optimize it to 1D:
    // dp[w] = whether we can make weight w using the candies processed so far.
    vector<char> dp(target + 1);
    dp[0] = true;

    for (int64_t x : a) {
      // Go backwards so each candy can be used at most once.
      for (int64_t w = target; w >= x; --w) {
        if (dp[w - x]) {
          dp[w] = true;
        }
      }
    }

    if (dp[target]) {
      cout << "Yes" << endl;
    } else  {
      cout << "No" << endl;
    }
  }

  return 0;
}
