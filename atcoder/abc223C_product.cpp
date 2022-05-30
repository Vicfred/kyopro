// uninhm
// https://atcoder.jp/contests/abc233/tasks/abc233_c
// brute force

#include <iostream>
#include <vector>
#include <algorithm>

#define ll long long

int main() {
  ll n, x, l, a, res;
  std::cin >> n >> x;
  std::vector<ll> prod{1};
  for (ll i = 0; i < n; ++i) {
    std::vector<ll> new_prod;
    std::cin >> l;
    for (ll j = 0; j < l; ++j) {
      std::cin >> a;
      for (const ll& old_prod : prod)
        if ((res = old_prod * a) <= x)
          new_prod.push_back(res);
      }
    prod = new_prod;
  }
  std::cout << std::count(std::begin(prod), std::end(prod), x) << "\n";
}
