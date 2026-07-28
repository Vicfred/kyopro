// vicfred
// https://atcoder.jp/contests/adt_all_20260701_1/tasks/abc329_f
// greedy, data structures, sets
#include <cstdint>
#include <iostream>
#include <set>
#include <utility>
#include <vector>

using namespace std;

int main() {
  int64_t N, Q;
  cin >> N >> Q;
  vector<set<int64_t>> C(N + 1);
  for (int64_t i = 1; i <= N; ++i) {
    int64_t c;
    cin >> c;
    C[i].insert(c);
  }
  for (int q = 0; q < Q; ++q) {
    int64_t a, b;
    cin >> a >> b;
    if (C[a].size() < C[b].size()) {
      for (int64_t c : C[a]) {
        C[b].insert(c);
      }
      C[a].clear();
      cout << C[b].size() << endl;
    } else {
      for (int64_t c : C[b]) {
        C[a].insert(c);
      }
      C[b].clear();
      cout << C[a].size() << endl;
      swap(C[a], C[b]);
    }
  }
  return 0;
}
