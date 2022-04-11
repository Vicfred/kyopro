// uninhm
// https://codeforces.com/contest/1661/problem/B
// dp, bfs

#include <algorithm>
#include <iostream>
#include <queue>

#define MOD 32768

int main() {
  // precalc
  static int dp[MOD];
  dp[0] = 0;
  for (int i = 1; i < MOD; ++i)
    dp[i] = -1;
  std::queue<int> q;
  q.push(MOD);
  while (!q.empty()) {
    int x = q.front();
    q.pop();
    if (x % 2 == 0 && dp[x/2] == -1) {
      dp[x/2] = dp[x%MOD] + 1;
      q.push(x/2);
      q.push(x/2+MOD);
    }
    if (dp[(x-1)%MOD] == -1) {
      dp[(x-1)%MOD] = dp[x%MOD] + 1;
      q.push(x-1);
      q.push(x-1+MOD);
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
