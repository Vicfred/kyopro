// Vicfred
// https://atcoder.jp/contests/abc399/tasks/abc399_a
// implementation
#include <iostream>

using namespace std;

int main() {
  int n;
  string s, t;
  cin >> n;
  cin >> s;
  cin >> t;
  int ans = 0;
  for(int i = 0; i < n; ++i) {
    if(s[i] != t[i]) {
      ans += 1;
    }
  }
  cout << ans << endl;
  return 0;
}
