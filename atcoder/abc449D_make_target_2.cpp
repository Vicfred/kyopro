// uninhm
// https://atcoder.jp/contests/abc449/tasks/abc449_d
// recursion

#include <iostream>

#define ll long long

using namespace std;

ll iseven(ll x) {
  return 1 - x&1;
}

int main() {
  ll l, r, d, u;
  cin >> l >> r >> d >> u;

  ll ans = 0;
  while (l <= r && d <= u) {
    if (l <= r && abs(l) >= abs(d) && abs(l) >= abs(u)) {
      ans += (u - d + 1)*iseven(l);
      l += 1;
    }
    else if (l <= r && abs(r) >= abs(d) && abs(r) >= abs(u)) {
      ans += (u - d + 1)*iseven(r);
      r -= 1;
    }
    else if (d <= u && abs(u) >= abs(l) && abs(u) >= abs(r)) {
      ans += (r - l + 1)*iseven(u);
      u -= 1;
    }
    else if (d <= u && abs(d) >= abs(l) && abs(d) >= abs(r)) {
      ans += (r - l + 1)*iseven(d);
      d += 1;
    }
  }

  cout << ans << '\n';

  return 0;
}
