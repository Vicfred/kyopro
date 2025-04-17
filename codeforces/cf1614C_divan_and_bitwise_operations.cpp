// vicfred
// https://codeforces.com/problemset/problem/1614/C
// bitwise operations, math
#include <iostream>

using namespace std;

long long binpow(long long x, long long n, long long m) {
  x %= m;
  long long res = 1LL;
  while (n > 0) {
    if (n & 1) {
      res = res * x % m;
    }
    x = x * x % m;
    n >>= 1;
  }
  return res;
}

int main() {
  const long long mod = (long long)1e9 + 7LL;
  int t;
  cin >> t;
  // cout << t << endl;
  while (t--) {
    int n, m;
    cin >> n >> m;
    // cout << n << " " << m << endl;
    long long total_or = 0LL;
    for (int i = 0; i < m; ++i) {
      int l, r, x;
      cin >> l >> r >> x;
      // cout << l << " " << r << " " << x << endl;
      total_or |= x;
    }
    cout << (total_or * binpow(2, n - 1, (long long)mod)) % mod << endl;
  }
  return 0;
}
