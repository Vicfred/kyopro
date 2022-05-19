// uninhm
// https://atcoder.jp/contests/abc240/tasks/abc240_c
// dp

#include <iostream>
#include <set>

int main() {
  int n, x;
  std::cin >> n >> x;
  std::set<int> s{0};
  for (int i = 0; i < n; ++i) {
    int a, b;
    std::cin >> a >> b;

    std::set<int> new_s;
    for (const int& num : s) {
      if (num + a <= x)
        new_s.insert(num + a);
      if (num + b <= x)
        new_s.insert(num + b);
    }
    s = new_s;
  }
  if (s.find(x) != s.end())
    std::cout << "Yes\n";
  else
    std::cout << "No\n";
}
