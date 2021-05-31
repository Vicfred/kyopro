// uninhm
// https://codeforces.com/contest/1472/problem/A
// simulation

#include<iostream>

using namespace std;

int main() {
  int t;
  cin >> t;

  for(int i = 0; i < t; ++i) {
    int w, h, n;
    cin >> w >> h >> n;

    int r = 1;
    while(w % 2 == 0) {
      w /= 2;
      r *= 2;
    }
    while(h % 2 == 0) {
      h /= 2;
      r *= 2;
    }

    cout << (r >= n ? "YES" : "NO") << "\n";
  }
}
