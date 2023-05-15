// Vicfred
// https://codeforces.com/contest/1807/problem/D
//
#include <iostream>
#include <vector>

using namespace std;

int main() {
  long long t;
  cin >> t;
  while (t--) {
    long long n, q;
    cin >> n >> q;
    vector<long long> a(n + 5);
    for (long long i = 1; i <= n; ++i) {
      cin >> a[i];
    }
    vector<long long> cum(n + 5, 0LL);
    cum = a;
    for (long long i = 1; i <= n; ++i) {
      cum[i] += cum[i - 1];
    }
    for (long long i = 0; i < q; ++i) {
      long long l, r, k;
      cin >> l >> r >> k;
      long long sum = (cum[l - 1]) + (cum[n] - cum[r]) + ((l - r + 1) * k);
      if(sum % 2 == 0) {
        cout << "NO" << endl;
      } else {
        cout << "YES" << endl;
      }
    }
  }
  return 0;
}
