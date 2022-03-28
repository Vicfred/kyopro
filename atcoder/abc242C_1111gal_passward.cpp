#include <iostream>

#define MOD 998244353

int main() {
  int n;
  std::cin >> n;

  long dp[9];
  for (int i = 0; i < 9; ++i)
    dp[i] = 1;

  long new_dp[9];
  for (int i = 1; i < n; ++i) {
    for (int j = 0; j < 9; ++j) {
      if (j == 0 || j == 8)
        new_dp[j] = dp[0] + dp[1];
      else
        new_dp[j] = dp[j - 1] + dp[j] + dp[j + 1];
      new_dp[j] %= MOD;
    }
    for (int j = 0; j < 9; ++j)
      dp[j] = new_dp[j];
  }

  int ans = 0;
  for (int i = 0; i < 9; ++i)
    ans = (ans + dp[i]) % MOD;

  std::cout << ans << "\n";
}
