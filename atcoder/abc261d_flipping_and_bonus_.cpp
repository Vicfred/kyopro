// vicfred
// https://atcoder.jp/contests/adt_all_20260717_1/tasks/abc261_d
// dynamic programming
#include <algorithm>
#include <cstdint>
#include <iostream>
#include <vector>

using namespace std;

int64_t maximumMoney(int64_t i, int64_t streak, int64_t N,
                     const vector<int64_t> &X, const vector<int64_t> &bonus,
                     vector<vector<int64_t>> &memo) {

  // No tosses remain, so no more money can be earned.
  if (i == N) {
    return 0;
  }

  // This state has already been computed.
  if (memo[i][streak] != -1) {
    return memo[i][streak];
  }

  // Choose tails: receive nothing and reset the streak to 0.
  int64_t tails = maximumMoney(i + 1, 0, N, X, bonus, memo);

  // Choose heads: receive X[i], increase the streak,
  // and receive a bonus if the new streak has one.
  int64_t heads = X[i] + bonus[streak + 1] +
                  maximumMoney(i + 1, streak + 1, N, X, bonus, memo);

  memo[i][streak] = max(heads, tails);

  return memo[i][streak];
}

int main() {
  int64_t N, M;
  cin >> N >> M;

  vector<int64_t> X(N);
  for (int64_t i = 0; i < N; ++i) {
    cin >> X[i];
  }

  // bonus[j] is the bonus received when the counter becomes exactly j.
  vector<int64_t> bonus(N + 1, 0);

  for (int64_t i = 0; i < M; ++i) {
    int64_t C, Y;
    cin >> C >> Y;
    bonus[C] = Y;
  }

  // memo[i][streak] stores the maximum money that can still be earned
  // starting before toss i with the current streak equal to streak.
  //
  // -1 means that the state has not been computed yet.
  // This is safe because every actual answer is nonnegative.
  vector<vector<int64_t>> memo(N + 1, vector<int64_t>(N + 1, -1));

  cout << maximumMoney(0, 0, N, X, bonus, memo) << endl;

  return 0;
}
