// Vicfred
// https://codeforces.com/contest/1692/problem/B
// greedy
#include <algorithm>
#include <iostream>
#include <set>
#include <vector>

using namespace std;

int main() {
  int t;
  cin >> t;
  while (t--) {
    int n;
    cin >> n;
    vector<int> a(n);
    set<int> distinct;
    for (int i = 0; i < n; ++i) {
      cin >> a[i];
      distinct.insert(a[i]);
    }
    if (n % 2 == distinct.size() % 2) {
      cout << distinct.size() << endl;
    } else {
      cout << distinct.size() - 1 << endl;
    }
  }
}
