// vicfred
// https://codeforces.com/problemset/problem/1742/E
// binary search
#include <algorithm>
#include <iostream>
#include <vector>

using namespace std;

int main() {
  int t;
  cin >> t;
while(t--) {
  long long n, q;
  cin >> n >> q;
  vector<long long> a(n);
  vector<long long> k(q);
  for(int i = 0; i < n; ++i) {
    cin >> a[i];
  }
  for(int i = 0; i < q; ++i) {
    cin >> k[i];
  }
  vector<long long> maxima_a(n);
  maxima_a[0] = a[0];
  for(int i = 1; i < n; ++i) {
    maxima_a[i] = max(maxima_a[i-1], a[i]);
  }
  vector<long long> cumulative;
  cumulative.push_back(0);
  for(int i = 0; i < n; ++i) {
    cumulative.push_back(a[i]);
  }
  for(int i = 1; i <= n; ++i) {
    cumulative[i] += cumulative[i - 1];
  }
  cumulative.push_back(cumulative[n - 1]);
  /*
  for(int i = 0; i < n; ++i) {
    cout << "a[" << i << "]: " << a[i] << endl;
    cout << "max a[" << i << "]: " << maxima_a[i] << endl;
    cout << "cumulative[" << i << "]: " << cumulative[i] << endl;
  }
  */
  for(int i = 0; i < q; ++i) {
    long long left = 0;
    long long right = n - 1;
    while(left <= right) {
      long long mid = (left + right)/2LL;
      if(maxima_a[mid] <= k[i]) {
        left = mid + 1;
      } else {
        right = mid - 1;
      }
    }
    if(left == 0) {
      cout << 0 << " ";
    } else {
      cout << cumulative[left] << " ";
    }
  } cout << endl;
}
  return 0;
}
