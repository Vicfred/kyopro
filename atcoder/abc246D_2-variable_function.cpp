// uninhm
// https://atcoder.jp/contests/abc246/tasks/abc246_d
// semi-brute force, binary search

#include <iostream>
#include <limits>

#define ll long long
#define MAX 1000000

int main() {
  ll n;
  std::cin >> n;

  ll ans = std::numeric_limits<ll>::max();
  for (ll a = 0; a < MAX; ++a) {
    auto f = [a](ll b){ return a*a*a + a*a*b + a*b*b + b*b*b; };
    ll left = -1;
    ll right = MAX;
    while (right - left > 1) {
      ll cur = (right + left) / 2;
      if (f(cur) < n) left = cur;
      else right = cur;
    }
    if (f(right) < ans)
      ans = f(right);
  }
  std::cout << ans << "\n";
}
