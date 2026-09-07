// vicfred
// https://atcoder.jp/contests/abc418/tasks/abc418_d
// dynamic programming
#include <array>
#include <cstdint>
#include <iostream>
#include <string>
#include <vector>

using namespace std;

int main() {
  int64_t N;
  cin >> N;

  string T;
  cin >> T;

  // dp[i][bit]: number of substrings ending at
  // T[i - 1] whose XNOR reduction equals bit.
  vector<array<int64_t, 2>> dp(N + 1);

  for (int64_t i = 1; i <= N; ++i) {
    const int64_t Ti = T[i - 1] - '0';

    // Pull DP: determine which previous result can
    // produce each new result after appending Ti.
    //
    // XNOR is 0 when the two bits are different,
    // so the previous result must be 1 - Ti.
    dp[i][0] = dp[i - 1][1 - Ti];

    // XNOR is 1 when the two bits are equal,
    // so the previous result must be Ti.
    dp[i][1] = dp[i - 1][Ti];

    // The one-character substring T[i - 1]
    // reduces to the character itself.
    dp[i][Ti] += 1;
  }

  int64_t answer = 0;

  // Every beautiful substring ends at some position.
  // dp[i][1] counts those ending at T[i - 1].
  for (int64_t i = 1; i <= N; ++i) {
    answer += dp[i][1];
  }

  cout << answer << endl;
  return 0;
}
