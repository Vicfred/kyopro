// uninhm
// https://atcoder.jp/contests/abc248/tasks/abc248_c
// dp

#include <iostream>

#define MOD 998244353

int main() {
  int N, M, K;
  std::cin >> N >> M >> K;

  int dp[K+1];
  for (int i = 0; i <= K; ++i)
    dp[i] = 0;
  for (int i = 1; i <= M; ++i)
    dp[i] = 1;
  for (int i = 1; i < N; ++i) {
    int new_dp[K+1];
    for (int j = 0; j <= K; ++j)
      new_dp[j] = 0;
    for (int j = 0; j <= K; ++j)
      for (int k = 1; k <= M; ++k)
        if (j + k <= K) {
          new_dp[j+k] += dp[j];
          new_dp[j+k] %= MOD;
        }
    for (int j = 0; j <= K; ++j)
      dp[j] = new_dp[j];
  }
  long long ans = 0;
  for (int i = 0; i <= K; ++i) {
    ans += dp[i];
    ans %= MOD;
  }
  std::cout << ans << std::endl;
}
