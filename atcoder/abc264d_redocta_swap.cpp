// vicfred
// https://atcoder.jp/contests/adt_medium_20240221_3/tasks/abc264_d
// inversion counting
#include <cstdint>
#include <iostream>
#include <string>
#include <vector>

using namespace std;

int main() {
  string S;
  cin >> S;

  const string target = "atcoder";
  int64_t n = static_cast<int64_t>(target.size());

  // rank[c] is the position where character c belongs
  // in the target string.
  //
  // target = "atcoder"
  //
  // a -> 0
  // t -> 1
  // c -> 2
  // o -> 3
  // d -> 4
  // e -> 5
  // r -> 6
  vector<int64_t> rank(256);

  for (int64_t i = 0; i < n; ++i) {
    rank[target[i]] = i;
  }

  int64_t answer = 0;

  // Convert S conceptually into the sequence of target
  // positions.
  //
  // For example:
  //
  // S = "catoder"
  //
  // becomes:
  //
  // 2 0 1 3 4 5 6
  //
  // We do not actually need to build that array. We can
  // compare the ranks directly.
  for (int64_t i = 0; i < n; ++i) {
    for (int64_t j = i + 1; j < n; ++j) {
      // If S[i] should appear after S[j] in "atcoder",
      // then this pair is an inversion.
      //
      // Each adjacent swap changes the inversion count by
      // exactly 1, so the number of inversions is exactly
      // the minimum number of adjacent swaps required to
      // transform S into "atcoder".
      if (rank[S[i]] > rank[S[j]]) {
        answer += 1;
      }
    }
  }

  cout << answer << endl;

  return 0;
}
