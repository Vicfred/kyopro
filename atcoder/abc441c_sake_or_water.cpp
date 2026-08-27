// vicfred
// https://atcoder.jp/contests/adt_easy_20260706_2/tasks/abc441_c
// binary search, prefix sums
#include <algorithm>
#include <cstdint>
#include <iostream>
#include <numeric>
#include <vector>

using namespace std;

int main() {
  int64_t N, K, X;
  cin >> N >> K >> X;

  vector<int64_t> A(N);
  for (int64_t &a : A) {
    cin >> a;
  }

  ranges::sort(A);

  vector<int64_t> prefix(N + 1);
  inclusive_scan(A.begin(), A.end(), prefix.begin() + 1);

  // Even if we drink every cup, the K smallest
  // cups could be exactly the sake cups.
  if (prefix[K] < X) {
    cout << -1 << endl;
    return 0;
  }

  auto possible = [&](int64_t m) {
    // If we choose the m largest cups, at least
    // [N - m, K) of them are forced to be sake
    // in the worst case.
    return prefix[K] - prefix[N - m] >= X;
  };

  int64_t left = N - K + 1;
  int64_t right = N;

  while (left < right) {
    int64_t mid = midpoint(left, right);

    if (possible(mid)) {
      right = mid;
    } else {
      left = mid + 1;
    }
  }

  cout << left << endl;

  return 0;
}
