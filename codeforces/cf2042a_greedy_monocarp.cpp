// vicfred
// https://codeforces.com/contest/2042/problem/A
// greedy
#include <algorithm>
#include <iostream>
#include <vector>

using namespace std;

int main() {
  int t;
  cin >> t;
  while (t--) {
    int n, k;
    cin >> n >> k;
    vector<long long> a(n);
    for (int i = 0; i < n; ++i) {
      cin >> a[i];
    }
    sort(begin(a), end(a), greater<long long>());
    int cummulative = 0LL;
    bool found = false;
    for (int i = 0; i < n; ++i) {
      cummulative += a[i];
      if (cummulative == k) {
        found = true;
      } else if (cummulative > k) {
        cummulative -= a[i];
        break;
      }
    }
    if (found) {
      cout << 0 << endl;
    } else {
      cout << k - cummulative << endl;
    }
  }
  return 0;
}
