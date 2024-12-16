// Vicfred
// https://codeforces.com/contest/2044/problem/A
// brute force
#include <iostream>

using namespace std;

int main() {
  int t;
  cin >> t;
  while(t--) {
    int n;
    cin >> n;
    int ans = 0;
    for(int a = 1; a <= 100; ++a) {
      for(int b = 1; b <= 100; ++b) {
        if(a + b == n) {
          ans += 1;
        }
      }
    }
    cout << ans << endl;
  }
  return 0;
}
