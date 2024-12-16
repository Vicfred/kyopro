// Vicfred
// https://codeforces.com/contest/2044/problem/C
// implementation
#include <algorithm>
#include <iostream>

using namespace std;

int main() {
  int t;
  cin >> t;
  while (t--) {
    long long m, a, b, c;
    cin >> m >> a >> b >> c;
    long long ans = 0LL;
    long long seats = 2LL * m;
    long long remaining = 0LL;
    ans += min(m, a);
    remaining += m - min(m, a);
    ans += min(m, b);
    remaining += m - min(m, b);
    ans += min(remaining, c);
    cout << ans << endl;
  }
  return 0;
}
