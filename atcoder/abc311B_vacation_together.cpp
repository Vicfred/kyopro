// Vicfred
// https://atcoder.jp/contests/abc311/tasks/abc311_b
// brute force
#include <iostream>
#include <string>
#include <vector>

using namespace std;

int main() {
  int n, d;
  cin >> n >> d;
  vector<string> s(n);
  for (int i = 0; i < n; ++i) {
    cin >> s[i];
  }
  int ans = 0;
  for (int day = 1; day <= d; ++day) {
    for (int i = 0; i + day <= d; ++i) {
      bool valid = true;
      for (int x = 0; x < day; ++x) {
        for (int y = 0; y < n; ++y) {
          if (s[y][i + x] == 'x') {
            valid = false;
          }
        }
      }
      if (valid) {
        ans = day;
      }
    }
  }
  cout << ans << endl;
  return 0;
}
