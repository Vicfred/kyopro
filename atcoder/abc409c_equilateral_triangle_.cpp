// vicfred
// https://atcoder.jp/contests/abc409/tasks/abc409_c
// cumulative sums, modular arithmetic, sorting, binary
// search, combinatorics
#include <algorithm>
#include <cstdint>
#include <iostream>
#include <vector>

using namespace std;

int64_t countOccurrences(const vector<int64_t> &positions,
                         int64_t target) {
  // In a sorted array, all occurrences of target lie in
  // [lower_bound(target), upper_bound(target)).
  auto first =
    lower_bound(positions.begin(), positions.end(), target);

  auto last =
    upper_bound(positions.begin(), positions.end(), target);

  return static_cast<int64_t>(last - first);
}

int main() {
  int64_t N, L;
  cin >> N >> L;

  vector<int64_t> positions;

  // We may place point 1 at position 0 because rotating the
  // entire configuration does not change any triangle.
  int64_t position = 0;
  positions.push_back(position);

  // Convert the clockwise distances into actual positions
  // on the circle using cumulative sums modulo L.
  for (int64_t i = 0; i < N - 1; ++i) {
    int64_t d;
    cin >> d;

    position = (position + d) % L;
    positions.push_back(position);
  }

  // An inscribed equilateral triangle requires its vertices
  // to be separated by exactly L / 3 along the
  // circumference.
  if (L % 3 != 0) {
    cout << 0 << endl;
    return 0;
  }

  // Sorting lets us count points at any exact position
  // using lower_bound and upper_bound.
  sort(positions.begin(), positions.end());

  int64_t step = L / 3;
  int64_t answer = 0;

  // Every equilateral triangle uses exactly one position
  // from each third: x, x + step, and x + 2 * step.
  // Restricting x to the first third counts each set once.
  for (int64_t x = 0; x < step; ++x) {
    int64_t a = countOccurrences(positions, x);

    int64_t b = countOccurrences(positions, x + step);

    int64_t c = countOccurrences(positions, x + 2 * step);

    // Choose one labeled point from each of the three
    // positions.
    answer += a * b * c;
  }

  cout << answer << endl;

  return 0;
}
