// uninhm
// https://atcoder.jp/contests/abc235/tasks/abc235_c
// implementation

#include <iostream>
#include <map>
#include <vector>

int main() {
  int n, q;
  std::cin >> n >> q;
  std::map<int, std::vector<int>> m;
  for (int i = 1; i <= n; i++) {
    int a_i;
    std::cin >> a_i;
    m[a_i].push_back(i);
  }
  while (q--) {
    int x, k;
    std::cin >> x >> k;
    if (m[x].size() < k) {
      std::cout << -1 << "\n";
      continue;
    }
    std::cout << m[x][k - 1] << "\n";
  }
}
