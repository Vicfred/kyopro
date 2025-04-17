// vicfred
// https://codeforces.com/contest/1742/problem/E
// implementation
#include <algorithm>
#include <iostream>
#include <vector>

using namespace std;

int main() {
  long long t;
  cin >> t;
  while (t--) {
    long long n, k;
    cin >> n >> k;
    vector<long long> a(n);
    vector<long long> maxima(n);
    for (int i = 0; i < n; ++i) {
      cin >> a[i];
      if (i > 0) {
        maxima[i] = max(maxima[i - 1], a[i]);
      } else {
        maxima[0] = a[0];
      }
    }
    for (int i = 1; i < n; ++i) {
      a[i] += a[i - 1];
    }
    // cout << "maxima" << endl;
    // for (int i = 0; i < n; ++i) {
    //   cout << maxima[i] << " ";
    // }
    // cout << endl;
    // cout << "cumulative" << endl;
    // for (int i = 0; i < n; ++i) {
    //   cout << a[i] << " ";
    // }
    // cout << endl;
    // cout << "~~~~~~" << endl;
    vector<long long> q(k);
    for (int i = 0; i < k; ++i) {
      cin >> q[i];
    }
    for (int i = 0; i < k; ++i) {
      // int idx = 0;
      // cout << "q[" << i << "]: " << q[i] << endl;
      // while (maxima[idx] <= q[i] and idx < n) {
      //   idx += 1;
      // }
      // long long L, R;
      // L = 0;
      // R = n;
      // long long mid;
      // cout << "q[" << i << "]: " << q[i] << endl;
      // while (L < R) {
      //   mid = (L + R) / 2LL;
      //   cout << "testing at: " << mid << ", value: " << maxima[mid] << endl;
      //   if (maxima[mid] > q[i]) {
      //     R = mid;
      //   } else {
      //     L = mid + 1;
      //   }
      // }
      auto upper = upper_bound(maxima.begin(), maxima.end(), q[i]);
      long long idx = upper - maxima.begin() - 1;
      if (idx < 0) {
        cout << 0 << " ";
      } else {
        cout << a[(upper - maxima.begin() - 1)] << " ";
      }
    }
    cout << endl;
  }
  return 0;
}
