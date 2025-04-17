// vicfred
// https://codeforces.com/contest/1742/problem/B
// sorting, implementation
#include <algorithm>
#include <iostream>
#include <vector>

using namespace std;

int main() {
  int t;
  cin >> t;
  while (t--) {
    int n;
    cin >> n;
    vector<long long> a(n);
    for(long long &x : a) {
      cin >> x;
    }
    sort(begin(a), end(a));
    bool possible = true;
    for(int i = 0; i + 1 < n; ++i) {
      if(a[i] >= a[i + 1]) {
        possible = false;
        break;
      }
    }
    if(possible) {
      cout << "YES" << endl;
    } else {
      cout << "NO" << endl;
    }
  }
  return 0;
}
