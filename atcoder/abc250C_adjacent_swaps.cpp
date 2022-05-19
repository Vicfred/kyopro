// uninhm
// https://atcoder.jp/contests/abc250/tasks/abc250_c
// implementation

#include <iostream>
#include <vector>
#include <map>

int main() {
  int n, q;
  std::cin >> n >> q;
  std::vector<int> a(n);
  std::map<int, int> m;
  for (int i = 1; i <= n; i++) {
    a[i-1] = i;
    m[i] = i-1;
  }

  while (q--) {
    int x;
    std::cin >> x;
    int idx = m[x];
    if (idx == n-1) {
      std::swap(m[x], m[a[idx-1]]);
      std::swap(a[idx], a[idx-1]);
    } else {
      std::swap(m[x], m[a[idx+1]]);
      std::swap(a[idx], a[idx+1]);
    }
  }

  for (int i = 0; i < n; i++) {
    std::cout << a[i];
    if (i < n)
      std::cout << " ";
  }
  std::cout << "\n";
}
