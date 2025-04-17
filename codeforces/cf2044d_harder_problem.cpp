// vicfred
// https://codeforces.com/contest/2044/problem/D
// greedy
#include <iostream>
#include <vector>
#include <set>

using namespace std;

int main() {
  long t;
  cin >> t;
  while(t--) {
    long n;
    cin >> n;
    vector<long> a(n+1);
    for(int i = 1; i <= n; ++i) {
      cin >> a[i];
    }
    set<long> avail;
    for(long i = 1LL; i <= n; ++i) {
      avail.insert(i);
    }
    for(long i = 1; i <= n; ++i) {
      if(avail.count(a[i]) > 0) {
        cout << a[i] << " ";
        avail.erase(a[i]);
      } else {
        cout << *avail.begin() << " ";
        avail.erase(avail.begin());
      }
    }
    cout << endl;
  }
  return 0;
}
