// vicfred
// https://codeforces.com/problemset/problem/706/B
// binary search
#include <algorithm>
#include <cstdint>
#include <iostream>
#include <vector>

using namespace std;

int main() {
  int64_t n;
  cin >> n;

  vector<int64_t> a(n);
  int64_t maxima = -1;
  for (int64_t i = 0; i < n; ++i) {
    cin >> a[i];
    maxima = max(maxima, a[i]);
  }

  sort(a.begin(), a.end());
  
  int64_t q;
  cin >> q;
  while(q--) {
    int64_t m;
    cin >> m;

    int64_t l, r;
    l = 0;
    r = n;
    // cout << "m: " << m << endl;
    while (l < r) {
      int64_t mid = l + (r - l) / 2;
      // cout << "testing position " << mid << ": " << a[mid] << endl;
      if(a[mid] <= m) {
        l = mid + 1;
      } else {
        r = mid;
      }
    }
    cout << l << endl;
  }

  return 0;
}
