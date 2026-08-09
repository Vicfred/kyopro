// vicfred
// https://atcoder.jp/contests/arc127/tasks/arc127_a
// combinatorics, decimal representation
#include <algorithm>
#include <cstdint>
#include <iostream>

using namespace std;

int main() {
  int64_t N;
  cin >> N;

  int64_t answer = 0;

  // prefix takes the values 1, 11, 111, 1111, ...
  int64_t prefix = 1;

  while (prefix <= N) {
    // Numbers beginning with prefix form the ranges
    //
    // [prefix, prefix + 1)
    // [prefix * 10, (prefix + 1) * 10)
    // [prefix * 100, (prefix + 1) * 100)
    // ...
    int64_t left = prefix;
    int64_t right = prefix + 1;

    while (left <= N) {
      // Intersect [left, right) with the integers [1, N + 1).
      answer += min(right, N + 1) - left;

      left *= 10;
      right *= 10;
    }

    // 1 -> 11 -> 111 -> 1111 -> ...
    prefix = prefix * 10 + 1;
  }

  cout << answer << endl;

  return 0;
}
