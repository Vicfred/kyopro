// uninhm
// https://atcoder.jp/contests/abc238/tasks/abc238_d
// bitwise operations

#include <iostream>

int main() {
  long long t, a, s;
  std::cin >> t;
  while (t--) {
    std::cin >> a >> s;
    if (s >= a && ((s - 2*a) & a) == 0)
      std::cout << "Yes\n";
    else
      std::cout << "No\n";
  }
}
