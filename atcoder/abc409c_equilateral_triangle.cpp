// vicfred
// https://atcoder.jp/contests/adt_easy_20260813_2/tasks/abc409_c
// prefix sums, modular arithmetic, frequency counting
// combinatorics, geometry, data structures, sets
#include <cstdint>
#include <iostream>
#include <map>

using namespace std;

int main() {
  int64_t N, L;
  cin >> N >> L;

  map<int64_t, int64_t> freq;

  int64_t position = 0;

  // Point 1 is placed at position 0.
  freq[position] += 1;

  for (int64_t i = 0; i < N - 1; ++i) {
    int64_t d;
    cin >> d;

    position = (position + d) % L;
    freq[position] += 1;
  }

  if (L % 3 != 0) {
    cout << 0 << endl;
    return 0;
  }

  int64_t step = L / 3;
  int64_t answer = 0;

  for (int64_t x = 0; x < step; ++x) {
    answer += freq[x] * freq[x + step] * freq[x + 2 * step];
  }

  cout << answer << endl;

  return 0;
}
