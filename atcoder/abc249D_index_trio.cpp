// uninhm
// https://atcoder.jp/contests/abc249/tasks/abc249_d
// semi-brute force

#include <iostream>
#include <map>

#define ll long long

int main() {
  int n;
  std::cin >> n;
  std::map<ll, ll> m;
  ll max = 0;
  for (int i = 0; i < n; i++) {
    ll x;
    std::cin >> x;
    m[x]++;
    if (x > max)
      max = x;
  }

  ll ans = 0;
  for (const auto&[k1, v1] : m)
    for (const auto&[k2, v2] : m)
      if (m.find(k1 * k2) != m.end())
        ans += v1 * v2 * m[k1 * k2];
      else if (k1 * k2 > max)
        break;

  std::cout << ans << "\n";
}
