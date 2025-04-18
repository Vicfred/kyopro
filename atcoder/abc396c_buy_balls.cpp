// vicfred
// https://atcoder.jp/contests/abc396/tasks/abc396_c
// cumulative sum
#include <algorithm>
#include <cstdint>
#include <vector>
#include <iostream>

using namespace std;

int main() {
  int64_t n, m;
  cin >> n >> m;
  std::vector<int64_t> b(n), w(m);
  for(auto &item : b) {
    cin >> item;
  }
  for(auto &item : w) {
    cin >> item;
  }
  sort(b.begin(), b.end(), greater<int64_t>());
  sort(w.begin(), w.end(), greater<int64_t>());
  vector<int64_t> sumB(n + 1);
  vector<int64_t> sumW(m + 1);
  vector<int64_t> maxSumW(m + 1);
  for(int i = 0; i < n; ++i) {
    sumB[i + 1] = sumB[i] + b[i];
  }
  for(int i = 0; i < m; ++i) {
    sumW[i + 1] = sumW[i] + w[i];
    maxSumW[i + 1] = max(maxSumW[i], sumW[i + 1]);
  }
  int64_t ans = INT64_MIN;
  for(int64_t i = 0; i < n + 1; ++i) {
    ans = max(ans, sumB[i] + maxSumW[min(i, m)]);
  }
  cout << ans << endl;
}
