// uninhm
// https://atcoder.jp/contests/abc247/tasks/abc247_d
// implementation, greedy

#include <iostream>
#include <queue>
#include <utility>

int main() {
  int q;
  std::cin >> q;

  std::queue<std::pair<long long, long long>> dq;

  while (q--) {
    int k;
    std::cin >> k;

    long long x, c;
    switch (k) {
      case 1:
        std::cin >> x >> c;

        dq.push({c, x});
        break;

      case 2:
        std::cin >> c;

        long long ans = 0;
        while (c) {
          auto p = dq.front();
          if (p.first >= c) {
            p.first -= c;
            dq.front() = p;
            ans += c * p.second;
            c = 0;
          } else {
            ans += p.first * p.second;
            c -= p.first;
            dq.pop();
          }
        }
        std::cout << ans << "\n";
    }
  }
}
