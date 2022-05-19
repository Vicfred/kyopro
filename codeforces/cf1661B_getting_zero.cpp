// uninhm
// https://codeforces.com/contest/1661/problem/B
// dp

#include <algorithm>
#include <iostream>

#define MOD 32768

int main() {
  // precalc
  static int dp[MOD];
  dp[0] = 0;
  for (int i = 1; i < MOD; ++i)
    dp[i] = -1;
  bool changed = true;
  while (changed) {
    changed = false;
    for (int j = MOD-1; j > 0; --j) {
      int x = dp[(j+1)%MOD], y = dp[j*2%MOD];
      int z = -1;
      if (x != -1)
        z = x;
      if (y != -1) {
        if (z == -1)
          z = y;
        else
          z = std::min(z, y);
      }
      if (dp[j] == -1 || z+1 < dp[j]) {
        dp[j] = z+1;
        changed = true;
      }
    }
  }

  int n;
  std::cin >> n;
  while (n--) {
    int a;
    std::cin >> a;
    std::cout << dp[a];
    if (n > 0)
      std::cout << " ";
  }
  std::cout << "\n";
}
