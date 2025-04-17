// vicfred
// https://codeforces.com/contest/1829/problem/C
// implementation, greedy
#include <iostream>
#include <vector>

using namespace std;

int main() {
  long long t;
  cin >> t;
  for (int kase = 0; kase < t; ++kase) {
    long long n;
    cin >> n;
    vector<long long> m(n);
    vector<string> s(n);
    long long both, l, r;
    both = l = r = 1 << 30;
    for (int i = 0; i < n; ++i) {
      cin >> m[i];
      cin >> s[i];
      if (s[i] == "11") {
        both = min(both, m[i]);
      } else if (s[i] == "10") {
        l = min(l, m[i]);
      } else if (s[i] == "01") {
        r = min(r, m[i]);
      }
    }
    if (both == 1 << 30 && l == 1 << 30 && r == 1 << 30) {
      cout << -1 << endl;
      continue;
    }
    long long ans = 0;
    if (both != 1 << 30) {
      ans = min(both, l + r);
      cout << ans << endl;
    } else {
      if (l == 1 << 30 || r == 1 << 30) {
        cout << -1 << endl;
      } else {
        cout << l + r << endl;
      }
    }
  }
  return 0;
}
