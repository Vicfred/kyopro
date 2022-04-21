// uninhm
// https://atcoder.jp/contests/abc241/tasks/abc241_d
// implementation, multiset

#include <iostream>
#include <set>

#define ll long long

int main() {
  std::multiset<ll> s;

  int q;
  std::cin >> q;
  while (q--) {
    ll kind, x, k;
    std::cin >> kind;
    switch (kind) {
      case 1:
        std::cin >> x;
        s.insert(x);
        break;
      case 2: {
        std::cin >> x >> k;
        auto it = s.upper_bound(x);
        int i;
        for (i = 0; i < k && it != s.begin(); ++i)
          it--;
        if (i != k) {
          std::cout << -1 << std::endl;
        } else {
          std::cout << *it << std::endl;
        }
      } break;
      case 3: {
        std::cin >> x >> k;
        auto it = s.lower_bound(x);
        int i;
        for (i = 0; i < k-1 && it != s.end(); ++i)
          it++;
        if (it == s.end() || i != k-1) {
          std::cout << -1 << std::endl;
        } else {
          std::cout << *it << std::endl;
        }
      } break;
    }
  }
}
