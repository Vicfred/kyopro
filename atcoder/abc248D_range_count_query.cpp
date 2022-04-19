// uninhm
// https://atcoder.jp/contests/abc248/tasks/abc248_d
// binary search

#include <iostream>
#include <map>
#include <vector>
#include <algorithm>

int count(
  const std::vector<int>& v,
  int l,
  int r
) {
  auto il = std::upper_bound(v.rbegin(), v.rend(), l, std::greater<int>());
  auto ir = std::lower_bound(v.rbegin(), v.rend(), r, std::greater<int>());
  return il - ir;
}

int main() {
  std::map<int, std::vector<int>> m;
  int n;
  std::cin >> n;
  for (int i = 0; i < n; i++) {
    int x;
    std::cin >> x;
    m[x].push_back(i);
  }

  int q;
  std::cin >> q;
  while (q--) {
    int l, r, x;
    std::cin >> l >> r >> x;
    std::cout << count(m[x], l-1, r-1) << "\n";
  }
}
