// uninhm
// https://codeforces.com/contest/1526/problem/B
// greedy

#include<iostream>

using namespace std;

int main() {
  int t, n;
  cin >> t;
  for (int k = 0; k < t; ++k) {
    cin >> n;
    if (n >= 1110 || 111*(n%11) <= n) cout << "YES\n";
    else cout << "NO\n";
  }
}
