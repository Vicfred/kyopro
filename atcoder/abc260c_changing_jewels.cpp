// vicfred
// https://atcoder.jp/contests/adt_all_20260807_1/tasks/abc260_C
// recursion
#include <cstdint>
#include <iostream>

using namespace std;

// Forward declaration because red() and blue() are mutually recursive.
int64_t blue(int64_t n, int64_t X, int64_t Y);

// Number of level-1 blue jewels eventually produced by
// one red jewel of level n.
int64_t red(int64_t n, int64_t X, int64_t Y) {
  // A level-1 red jewel cannot be transformed anymore,
  // so it contributes no level-1 blue jewels.
  if (n == 1) {
    return 0;
  }

  // Red_n -> Red_(n-1) + X * Blue_n
  return red(n - 1, X, Y) + X * blue(n, X, Y);
}

// Number of level-1 blue jewels eventually produced by
// one blue jewel of level n.
int64_t blue(int64_t n, int64_t X, int64_t Y) {
  // A level-1 blue jewel is already exactly one jewel
  // of the type we want to count.
  if (n == 1) {
    return 1;
  }

  // Blue_n -> Red_(n-1) + Y * Blue_(n-1)
  return red(n - 1, X, Y) + Y * blue(n - 1, X, Y);
}

int main() {
  int64_t N, X, Y;
  cin >> N >> X >> Y;

  // Initially there is exactly one red jewel of level N.
  cout << red(N, X, Y) << endl;
}
