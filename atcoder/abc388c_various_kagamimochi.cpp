// vicfred
// https://atcoder.jp/contests/abc388/tasks/abc388_c
// binary search
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
  for (int i = 0; i < n; ++i) {
    int64_t l, r;
    l = 0;
    r = n - 1;
    while (l <= r) {
      int64_t mid = (l + r) / 2;
      if(as[i] * 2LL <= as[mid]) {
        r = mid - 1;
      } else {
        l = mid + 1;
      }
    }
    ans += n - l;
  }
  cout << ans << endl;
  return 0;
}
