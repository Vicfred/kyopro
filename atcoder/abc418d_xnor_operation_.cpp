// vicfred
// https://atcoder.jp/contests/abc418/tasks/abc418_d
// dynamic programming
#include <array>
#include <cstdint>
#include <iostream>
#include <string>

using namespace std;

int main() {
  int64_t N;
  cin >> N;

  string T;
  cin >> T;

  // The full state would be dp[i][bit], counting
  // substrings ending at i whose reduction is bit.
  //
  // Row i depends only on row i - 1, so earlier rows
  // can be discarded. This array stores the previous
  // row and always has only two elements.
  //
  // dp[0]: old substrings that reduce to 0.
  // dp[1]: old substrings that reduce to 1.
  array<int64_t, 2> dp{};
  int64_t answer = 0;

  for (int64_t i = 0; i < N; ++i) {
    const int64_t digit = T[i] - '0';

    // Compute the new row from the unchanged old row.
    //
    // To produce 0, the old result must differ from
    // digit, so its value is 1 - digit.
    //
    // To produce 1, the old result must equal digit,
    // so its value is digit.
    //
    // A separate array is required because changing
    // dp[0] first could destroy an old value still
    // needed to compute dp[1], or vice versa.
    array<int64_t, 2> next{dp[1 - digit], dp[digit]};

    // The one-character substring T[i] has not come
    // from the old row. It reduces to digit itself.
    ++next[digit];

    // next[1] counts beautiful substrings whose right
    // endpoint is the current position.
    answer += next[1];

    // The new row becomes the old row for the next
    // position. No earlier DP row is needed again.
    dp = next;
  }

  cout << answer << endl;
  return 0;
}
