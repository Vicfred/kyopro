// vicfred
// https://atcoder.jp/contests/abc388/tasks/abc388_c
// sliding window
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
  int64_t ans = 0;
  int64_t j = 0;
  for(int64_t i = 0; i < n; ++i) {
    while(j < n and 2LL * as[j] <= as[i]) {
      j += 1;
    }
    ans += j;
  }
  cout << ans << endl;
  return 0;
}
