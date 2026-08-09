// vicfred
// https://atcoder.jp/contests/jsc2019-qual/tasks/jsc2019_qual_b
// combinatorics, inversion counting
#include <cstdint>
#include <iostream>
#include <vector>

using namespace std;

int main() {
  const int64_t MOD = 1000000007;

  int64_t N, K;
  cin >> N >> K;

  vector<int64_t> A(N);
  for (int64_t i = 0; i < N; ++i) {
    cin >> A[i];
  }

  // Count inversions inside a single copy of A.
  // Here we need i < j because both elements belong to the same copy.
  int64_t inside = 0;
  for (int64_t i = 0; i < N; ++i) {
    for (int64_t j = i + 1; j < N; ++j) {
      if (A[i] > A[j]) {
        inside += 1;
      }
    }
  }

  // Count inversions between one earlier copy and one later copy.
  // Every element of the earlier copy already appears before every element
  // of the later copy, so there is no i < j restriction here.
  int64_t between = 0;
  for (int64_t i = 0; i < N; ++i) {
    for (int64_t j = 0; j < N; ++j) {
      if (A[i] > A[j]) {
        between += 1;
      }
    }
  }

  // Each of the K copies contributes 'inside' inversions.
  int64_t answer = (K % MOD) * (inside % MOD) % MOD;

  // There are K choose 2 pairs consisting of an earlier and a later copy.
  int64_t pairsOfCopies = K * (K - 1) / 2;
  answer += (pairsOfCopies % MOD) * (between % MOD) % MOD;
  answer %= MOD;

  cout << answer << endl;

  return 0;
}
