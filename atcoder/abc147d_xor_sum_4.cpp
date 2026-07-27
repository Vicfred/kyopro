// vicfred
// https://atcoder.jp/contests/abc147/tasks/abc147_d
// bitwise, xor, modular arithmetic, frequency counting
#include <cstdint>
#include <iostream>
#include <vector>

using namespace std;

int main() {
  const int64_t MOD = 1e9 + 7;

  int64_t N;
  cin >> N;

  vector<int64_t> A(N);
  for (int64_t i = 0; i < N; ++i) {
    cin >> A[i];
  }

  int64_t answer = 0;
  int64_t power = 1;

  for (int64_t bit = 0; bit < 60; ++bit) {
    int64_t ones = 0;

    for (int64_t i = 0; i < N; ++i) {
      if (((A[i] >> bit) & 1) != 0) {
        ones += 1;
      }
    }

    int64_t zeroes = N - ones;
    int64_t contribution = (zeroes * ones) % MOD;
    contribution = (contribution * power) % MOD;

    answer = (answer + contribution) % MOD;
    power = (power * 2) % MOD;
  }

  cout << answer << endl;
  return 0;
}
