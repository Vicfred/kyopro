// vicfred
// https://codeforces.com/contest/1807/problem/B
// greedy
#include <iostream>
#include <vector>

using namespace std;

int main() {
  int t;
  cin >> t;
  while(t--) {
    int n;
    cin >> n;
    vector<int> a(n);
    for(int i = 0; i < n; ++i) {
      cin >> a[i];
    }
    int even, odd;
    even = odd = 0;
    for(int i = 0; i < n; ++i) {
      if(a[i] % 2 == 0) {
        even += a[i];
      } else {
        odd += a[i];
      }
    }
    if(even > odd) {
      cout << "YES" << endl;
    } else {
      cout << "NO" << endl;
    }
  }
  return 0;
}
