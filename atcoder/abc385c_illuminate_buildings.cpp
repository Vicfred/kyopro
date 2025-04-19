// vicfred
// https://atcoder.jp/contests/abc385/tasks/abc385_c
// brute force
#include <algorithm>
#include <cstdint>
#include <iostream>
#include <vector>

using namespace std;

int main() {
  const int64_t max_n = 3001;
  int64_t n;
  cin >> n;
  vector<int64_t> hs(n);
  vector<vector<int64_t>> building_indices(max_n);
  for (int i = 0; i < n; ++i) {
    cin >> hs[i];
  }
  int64_t maxima = 1;
  for (int64_t index = 0; index < n; ++index) {
    for (int64_t width = 1; width < n; ++width) {
      int64_t count = 1;
      while (index + count * width < n and
             hs[index] == hs[index + count * width]) {
        count += 1;
      }
      maxima = max(maxima, count);
    }
  }
  cout << maxima << endl;
  return 0;
}
