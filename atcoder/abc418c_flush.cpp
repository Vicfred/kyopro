// vicfred
// https://atcoder.jp/contests/adt_hard_20251125_1/tasks/abc418_c
// sorting, prefix sums, binary search
#include <algorithm>
#include <cstdint>
#include <iostream>
#include <numeric>
#include <ranges>
#include <vector>

using namespace std;

int main() {
  int64_t N, Q;
  cin >> N >> Q;

  auto naturals = views::iota(int64_t{1}, N + 1);

  int64_t maxA = 0;

  vector<int64_t> A(N);
  for (int64_t &a : A) {
    cin >> a;
    maxA = max(maxA, a);
  }

  ranges::sort(A);

  vector<int64_t> prefix(N + 1);
  for (int64_t i : naturals) {
    prefix[i] = prefix[i - 1] + A[i - 1];
  }

  for (int64_t q = 0; q < Q; ++q) {
    int64_t b;
    cin >> b;

    if (b > maxA) {
      cout << -1 << endl;
      continue;
    }

    int64_t left = 0;
    int64_t right = N - 1;

    // Find the first index with A[i] >= b.
    while (left < right) {
      int64_t mid = midpoint(left, right);

      if (A[mid] < b) {
        left = mid + 1;
      } else {
        right = mid;
      }
    }

    // Maximum losing configuration + 1.
    cout << prefix[left] + (N - left) * (b - 1) + 1
         << endl;
  }

  return 0;
}
