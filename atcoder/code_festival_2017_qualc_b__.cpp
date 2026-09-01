// vicfred
// https://atcoder.jp/contests/code-festival-2017-qualc/tasks/code_festival_2017_qualc_b
// dynamic programming, counting

#include <cstdint>
#include <iostream>
#include <vector>

using namespace std;

int main() {
  int64_t N;
  cin >> N;

  vector<int64_t> A(N);
  for (int64_t i = 0; i < N; ++i) {
    cin >> A[i];
  }

  // dp[i][0] = number of ways to choose the first i
  // elements such that their product is even.
  //
  // dp[i][1] = number of ways to choose the first i
  // elements such that their product is odd.
  vector<vector<int64_t>> dp(N + 1, vector<int64_t>(2, 0));

  // The empty product is 1, which is odd.
  dp[0][1] = 1;

  for (int64_t i = 1; i <= N; ++i) {
    int64_t evenChoices;
    int64_t oddChoices;

    // For A[i - 1], the three possible values are
    // A[i - 1] - 1, A[i - 1], A[i - 1] + 1.
    if (A[i - 1] % 2 == 0) {
      evenChoices = 1;
      oddChoices = 2;
    } else {
      evenChoices = 2;
      oddChoices = 1;
    }

    // An even product stays even regardless of the
    // next choice. An odd product becomes even only
    // when the next chosen value is even.
    dp[i][0] =
      3 * dp[i - 1][0] + evenChoices * dp[i - 1][1];

    // An odd product remains odd only if the previous
    // product and the newly chosen value are both odd.
    dp[i][1] = oddChoices * dp[i - 1][1];
  }

  cout << dp[N][0] << endl;

  return 0;
}
