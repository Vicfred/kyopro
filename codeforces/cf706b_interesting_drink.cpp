// vicfred
// https://codeforces.com/problemset/problem/706/B
// dynamic programming
#include <cstdint>
#include <iostream>
#include <unordered_map>
#include <vector>

using namespace std;

int main() {
  int64_t n;
  cin >> n;

  unordered_map<int64_t, int64_t> count;

  vector<int64_t> a(n);
  for (int64_t i = 0; i < n; ++i) {
    cin >> a[i];
    count[a[i]] += 1;
  }
  
  unordered_map<int64_t, int64_t> dp;
  for (int64_t i = 1; i <= 100'000; ++i) {
    dp[i] = dp[i - 1] + count[i];
  }

  int64_t q;
  cin >> q;
  while(q--) {
    int64_t m;
    cin >> m;
    
    if (m > 100'000) {
      cout << n << endl;
    } else {
      cout << dp[m] << endl;
    }
  }

  return 0;
}
