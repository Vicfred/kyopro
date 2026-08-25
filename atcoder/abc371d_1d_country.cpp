// vicfred
// https://atcoder.jp/contests/abc371/tasks/abc371_d
// prefix sums, binary search, range queries
#include <cstdint>
#include <iostream>
#include <vector>

using namespace std;

int main() {
  const int64_t MAX = 1'000'000'001;
  int64_t N;
  cin >> N;

  vector<int64_t> X(N);
  vector<int64_t> P(N);

  for (int64_t i = 0; i < N; ++i) {
    cin >> X[i];
  }

  for (int64_t i = 0; i < N; ++i) {
    cin >> P[i];
  }

  vector<int64_t> prefix(N + 1);
  for (int64_t i = 1; i <= N; ++i) {
    prefix[i] = prefix[i - 1] + P[i - 1];
  }

  int64_t Q;
  cin >> Q;

  while (Q--) {
    int64_t L, R;
    cin >> L >> R;

    int64_t l = 0;
    int64_t r = N;

    while (l < r) {
      int64_t mid = l + (r - l) / 2;

      if (X[mid] >= L) {
        r = mid;
      } else {
        l = mid + 1;
      }
    }

    int64_t first = l;

    l = 0;
    r = N;

    while (l < r) {
      int64_t mid = l + (r - l) / 2;

      if (X[mid] > R) {
        r = mid;
      } else {
        l = mid + 1;
      }
    }

    int64_t last = l;

    cout << prefix[last] - prefix[first] << endl;
  }

  return 0;
}
