// vicfred
// https://atcoder.jp/contests/abc405/tasks/abc405_c
// prefix-sum
#include <cstdint>
#include <iostream>
#include <vector>

using namespace std;

int main() {
  int64_t n;
  cin >> n;
  vector<int64_t> as(n);
  for (int i = 0; i < n; ++i) {
    cin >> as[i];
  }
  vector<int64_t> cumulative_sum(n + 1);
  for (int i = 1; i <= n; ++i) {
    cumulative_sum[i] = cumulative_sum[i - 1] + as[i - 1];
  }
  int64_t ans = 0LL;
  for (int i = 0; i < n; ++i) {
    ans += cumulative_sum[i] * as[i];
  }
  cout << ans << endl;
}
