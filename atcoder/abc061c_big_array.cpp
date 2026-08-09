// vicfred
// https://atcoder.jp/contests/abc061/tasks/abc061_c
// frequency counting, bucket sort
#include <cstdint>
#include <iostream>
#include <vector>

using namespace std;

int main() {
  int64_t N, K;
  cin >> N >> K;

  const int64_t MAX_A = 100000;

  // freq[x] is the total number of copies of value x.
  vector<int64_t> freq(MAX_A + 1, 0);

  for (int64_t i = 0; i < N; ++i) {
    int64_t a, b;
    cin >> a >> b;
    freq[a] += b;
  }

  // cumulative is the number of elements whose value is <= x.
  int64_t cumulative = 0;

  for (int64_t x = 1; x <= MAX_A; ++x) {
    cumulative += freq[x];

    // The K-th element lies inside the block of copies of x.
    if (cumulative >= K) {
      cout << x << endl;
      return 0;
    }
  }

  return 0;
}
