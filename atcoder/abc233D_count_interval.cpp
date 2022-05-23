// uninhm
// https://atcoder.jp/contests/abc233/tasks/abc233_d
// cumulative sum

#include <iostream>
#include <map>

#define ll long long

int main() {
  ll n, k, a;
  std::cin >> n >> k;

  ll acc = 0;
  std::map<ll, ll> m;
  ll ans = 0;
  for (int i = 1; i <= n; i++) {
    m[acc]++;
    std::cin >> a;
    acc += a;
    ans += m[acc - k];
  }
  std::cout << ans << std::endl;
}
