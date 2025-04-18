// vicfred
// https://atcoder.jp/contests/abc393/tasks/abc393_c
// data structure, set, dictionary, balanced tree
#include <cstdint>
#include <iostream>
#include <set>
#include <utility>

using namespace std;

int main() {
  int64_t n, m;
  cin >> n >> m;
  set<pair<int64_t, int64_t>> edges;
  int64_t ans = 0;
  for (int i = 0; i < m; ++i) {
    int64_t u, v;
    cin >> u >> v;
    if(u > v) {
      u ^= v;
      v ^= u;
      u ^= v;
    }
    if (u == v) {
      ans += 1;
      continue;
    }
    auto edge = make_pair(u, v);
    if (edges.count(edge) > 0) {
      ans += 1;
    } else {
      edges.insert(edge);
    }
  }
  cout << ans << endl;
  return 0;
}
