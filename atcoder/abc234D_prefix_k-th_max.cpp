// uninhm
// https://atcoder.jp/contests/abc234/tasks/abc234_d
// implementation

#include <iostream>
#include <set>

int main() {
  int n, k;
  std::cin >> n >> k;
  std::set<int> s;
  for (int i = 1; i <= n; i++) {
    int p;
    std::cin >> p;
    if (i <= k)
      s.insert(p);
    else if (p > *s.begin()) {
      s.insert(p);
      s.erase(s.begin());
    }
    if (i >= k)
      std::cout << *s.begin() << "\n";
  }
}

