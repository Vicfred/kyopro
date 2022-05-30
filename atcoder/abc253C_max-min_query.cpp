// uninhm
// https://atcoder.jp/contests/abc253/tasks/abc253_c
// implementation

#include <iostream>
#include <map>

#define ll long long

int main() {
  int q;
  std::cin >> q;
  std::map<ll, ll> m;
  while (q--) {
    int k;
    std::cin >> k;
    switch (k) {
      case 1: {
        ll x;
        std::cin >> x;
        m[x]++;
        break;
      }
      case 2: {
        ll x, c;
        std::cin >> x >> c;
        if (c >= m[x])
          m.erase(x);
        else
          m[x] -= c;
        break;
      }
      case 3: {
        std::cout << m.rbegin()->first - m.begin()->first << std::endl;
        break;
      }
    }
  }
}
