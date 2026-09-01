// vicfred
// https://atcoder.jp/contests/adt_easy_20260813_2/tasks/abc409_c
// combinatorics, counting, complement

#include <cstdint>
#include <iostream>

using namespace std;

int main() {
  int64_t N;
  cin >> N;

  int64_t evenCount = 0;

  for (int64_t i = 0; i < N; ++i) {
    int64_t A;
    cin >> A;

    if (A % 2 == 0) {
      evenCount += 1;
    }
  }

  // Every position has three possible values:
  // A[i] - 1, A[i], A[i] + 1.
  int64_t total = 1;
  for (int64_t i = 0; i < N; ++i) {
    total *= 3;
  }

  // An odd product requires every chosen value to be odd.
  // An even A[i] gives two odd choices, while an odd A[i]
  // gives only one.
  int64_t oddProduct = 1;
  for (int64_t i = 0; i < evenCount; ++i) {
    oddProduct *= 2;
  }

  cout << total - oddProduct << endl;

  return 0;
}
