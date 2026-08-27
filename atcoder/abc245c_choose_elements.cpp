// vicfred
// https://atcoder.jp/contests/adt_all_20231213_2/tasks/abc245_c
// dynamic programming
#include <cstdint>
#include <cstdlib>
#include <iostream>
#include <ranges>
#include <vector>

using namespace std;

int main() {
  int64_t N, K;
  cin >> N >> K;

  vector<int64_t> A(N);
  vector<int64_t> B(N);

  for (int64_t &a : A) {
    cin >> a;
  }

  for (int64_t &b : B) {
    cin >> b;
  }

  vector<vector<char>> dp(N, vector<char>(2, false));

  // At the first position, we may choose either A[0] or
  // B[0].
  dp[0][0] = true;
  dp[0][1] = true;

  auto indices = views::iota(int64_t{1}, N);

  for (int64_t i : indices) {
    // End the prefix at A[i].
    dp[i][0] =
      (dp[i - 1][0] && abs(A[i - 1] - A[i]) <= K) ||
      (dp[i - 1][1] && abs(B[i - 1] - A[i]) <= K);

    // End the prefix at B[i].
    dp[i][1] =
      (dp[i - 1][0] && abs(A[i - 1] - B[i]) <= K) ||
      (dp[i - 1][1] && abs(B[i - 1] - B[i]) <= K);
  }

  if (dp[N - 1][0] || dp[N - 1][1]) {
    cout << "Yes" << endl;
  } else {
    cout << "No" << endl;
  }

  return 0;
}
