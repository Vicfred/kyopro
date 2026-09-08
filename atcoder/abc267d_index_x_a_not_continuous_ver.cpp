// vicfred
// https://atcoder.jp/contests/abc267/tasks/abc267_d
// dynamic programming
#include <algorithm>
#include <cstdint>
#include <iostream>
#include <limits>
#include <vector>

using namespace std;

int main() {
  int64_t N, M;
  cin >> N >> M;

  vector<int64_t> A(N);
  for (int64_t &a : A) {
    cin >> a;
  }

  constexpr int64_t NEG_INF =
    numeric_limits<int64_t>::min() / 4;

  // Best weighted sum using exactly taken elements
  // from the first i elements of A.
  vector dp(N + 1, vector<int64_t>(M + 1, NEG_INF));

  // Selecting nothing has score zero for every prefix.
  for (int64_t i = 0; i <= N; ++i) {
    dp[i][0] = 0;
  }

  // Each row depends only on the preceding row.
  for (int64_t i = 1; i <= N; ++i) {
    for (int64_t taken = 1; taken <= min(i, M); ++taken) {
      // Pull from skipping or taking A[i - 1].
      // The take predecessor is always reachable here.
      const int64_t skip = dp[i - 1][taken];
      const int64_t take =
        dp[i - 1][taken - 1] + taken * A[i - 1];
      dp[i][taken] = max(skip, take);
    }
  }

  // Exactly M selections from all N elements.
  cout << dp[N][M] << endl;

  return 0;
}
