// vicfred
// https://atcoder.jp/contests/abc400/tasks/abc400_c
// math, binary search
#include <cstdint>
#include <iostream>

using namespace std;

int main() {
  int64_t n;
  cin >> n;
  int64_t ans = 0;
  for(int i = 1; i <= 2; ++i) {
    int64_t a = 1LL << i;
    if(a > n) {
      break;
    }
    if(a == n) {
      ans += 1;
      continue;
    }
    int64_t low, high;
    low = 1;
    high = n;
    while(low <= high) {
      int64_t mid = (low + high) / 2;
      __int128 val=(__int128) a * mid * mid;
      if(val <= n) {
        low = mid + 1;
      } else {
        high = mid - 1;
      }
    }
    ans += low - 1;
  }
  cout << ans << endl;
  return 0;
}
