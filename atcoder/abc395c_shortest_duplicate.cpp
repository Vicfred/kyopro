// vicfred
// https://atcoder.jp/contests/abc395/tasks/abc395_c
// data structures, dictionary
#include <algorithm>
#include <cstdint>
#include <iostream>
#include <vector>

using namespace std;

int main() {
  int64_t n;
  cin >> n;
  vector<int64_t> as(n);
  const int64_t max_n = 1e6 + 1;
  vector<vector<int64_t>> indices(max_n);
  for (int i = 0; i < n; ++i) {
    cin >> as[i];
    indices[as[i]].push_back(i);
  }
  int64_t ans = n + 1;
  for(int i = 0; i < max_n; ++i) {
    if(indices[i].size() < 2) {
      continue;
    }
    for(int j = 0; j < indices[i].size() - 1; ++j) {
      ans = min(ans, indices[i][j + 1] - indices[i][j] + 1);
    }
  }
  if(ans == n + 1) {
    cout << -1 << endl;
  }
  else {
    cout << ans << endl;
  }
  return 0;
}
