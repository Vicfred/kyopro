// uninhm
// https://atcoder.jp/contests/abc194/tasks/abc194_c
// greedy

#include <iostream>
#include <map>

int main() {
  long n;
  std::cin >> n;
  std::map<long, long> m;
  while (n--) {
    long a;
    std::cin >> a;
    m[a]++;
  }
  long ans = 0;
  for (long i = -200; i <= 200; i++)
    for (long j = i+1; j <= 200; j++)
      ans += m[i] * m[j] * (i - j) * (i - j);
  std::cout << ans << "\n";
}
