// vicfred
// https://atcoder.jp/contests/adt_hard_20240523_2/tasks/abc321_d
// sorting, binary search, prefix sums
#include <algorithm>
#include <cstdint>
#include <iostream>
#include <vector>

using namespace std;

int main() {
  int64_t N, M, P;
  cin >> N >> M >> P;

  vector<int64_t> A(N);
  vector<int64_t> B(M);

  for (int64_t i = 0; i < N; ++i) {
    cin >> A[i];
  }

  for (int64_t j = 0; j < M; ++j) {
    cin >> B[j];
  }

  sort(B.begin(), B.end());

  // prefix[k] is the sum of the first k elements of B.
  vector<int64_t> prefix(M + 1, 0);
  for (int64_t j = 0; j < M; ++j) {
    prefix[j + 1] = prefix[j] + B[j];
  }

  int64_t answer = 0;

  for (int64_t i = 0; i < N; ++i) {
    int64_t threshold = P - A[i];

    // Find how many B[j] satisfy B[j] < P - A[i].
    int64_t k = lower_bound(B.begin(), B.end(), threshold) - B.begin();

    // For these k dishes, the price is A[i] + B[j].
    int64_t uncapped = k * A[i] + prefix[k];

    // Everything remaining side dish makes the set price exactly P.
    int64_t capped = (M - k) * P;

    answer += uncapped + capped;
  }

  cout << answer << endl;

  return 0;
}
