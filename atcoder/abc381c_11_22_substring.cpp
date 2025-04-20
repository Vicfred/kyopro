// vicfred
// https://atcoder.jp/contests/abc381/tasks/abc381_c
// implementation
#include <algorithm>
#include <cstdint>
#include <iostream>
#include <string>

using namespace std;

int main() {
  int64_t n;
  cin >> n;
  string s;
  cin >> s;
  int64_t ans = 0;
  for(int i = 0; i < n; ++i) {
    if(s[i] != '/') {
      continue;
    }
    int64_t d = 0;
    while(true) {
      int j = i - (d + 1);
      int k = i + (d + 1);
      if(j < 0 or j >= n) {
        break;
      }
      if(k < 0 or k >= n) {
        break;
      }
      if(s[j] != '1') {
        break;
      }
      if(s[k] != '2') {
        break;
      }
      d += 1;
    }
    ans = max(ans, 1 + 2 * d);
  }
  cout << ans << endl;
  return 0;
}
