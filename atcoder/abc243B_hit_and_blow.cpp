// uninhm
// https://atcoder.jp/contests/abc243/tasks/abc243_b
// implementation

#include <iostream>
#include <set>

int main() {
  int n;
  std::cin >> n;

  int a[n];
  std::set<int> s;

  for (int i = 0; i < n; i++) {
    std::cin >> a[i];
    s.insert(a[i]);
  }

  int ans1 = 0;
  int ans2 = 0;
  for (int i = 0; i < n; i++) {
    int b;
    std::cin >> b;
    if (a[i] == b)
      ans1++;
    else if (s.count(b))
      ans2++;
  }

  std::cout << ans1 << "\n";
  std::cout << ans2 << "\n";
}
