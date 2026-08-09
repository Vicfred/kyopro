// vicfred
// https://atcoder.jp/contests/adt_all_20240125_1/tasks/abc217_d
// data structures, ordered set, binary search
#include <cstdint>
#include <iostream>
#include <set>

using namespace std;

int main() {
  int64_t L, Q;
  cin >> L >> Q;

  // 0 and L are always boundaries of the wood.
  set<int64_t> cuts = {0, L};

  for (int64_t i = 0; i < Q; ++i) {
    int64_t c, x;
    cin >> c >> x;

    if (c == 1) {
      cuts.insert(x);
    } else {
      // The first cut to the right of x.
      auto right = cuts.lower_bound(x);

      // Since x has not been cut before, the previous cut is
      // exactly the left boundary of the piece containing x.
      auto left = prev(right);
      
      cout << *right - *left << endl;
    }
  }
  return 0;
}
