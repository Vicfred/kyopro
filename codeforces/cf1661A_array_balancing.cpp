// uninhm
// https://codeforces.com/contest/1661/problem/A
// greedy

#include <iostream>

int main() {
  int t;
  std::cin >> t;
  while (t--) {
    int n;
    std::cin >> n;
    long long a[n], b[n];
    for (int i = 0; i < n; ++i)
      std::cin >> a[i];
    for (int i = 0; i < n; ++i)
      std::cin >> b[i];
    long long sum = 0;
    for (int i = 0; i < n; ++i) {
      if (a[i] > b[i])
        std::swap(a[i], b[i]);
      if (i == 0) continue;
      sum += llabs(a[i-1] - a[i]);
      sum += llabs(b[i-1] - b[i]);
    }
    std::cout << sum << "\n";
  }
}
