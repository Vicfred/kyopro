// uninhm
// https://codeforces.com/contest/1703/problem/F
// binary search

#include <iostream>
#include <vector>
#include <utility>
#include <algorithm>
#include <limits>

int main() {
  int t; std::cin >> t;
  while (t--) {
    int n; std::cin >> n;
    std::vector<std::pair<int, int>> v;
    v.reserve(n+1);
    for (int i = 1; i <= n; ++i) {
      int x; std::cin >> x;
      if (x < i)
        v.push_back({x, i});
    }
    std::sort(std::begin(v), std::end(v));
    long long ans = 0;
    for (const auto&[ai, i] : v) {
      auto iter = std::upper_bound(
          std::begin(v),
          std::end(v),
          std::make_pair(i, std::numeric_limits<int>().max())
      );
      ans += std::end(v) - iter;
    }
    std::cout << ans << "\n";
  }
}
