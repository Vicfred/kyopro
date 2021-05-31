// uninhm
// https://atcoder.jp/contests/abc185/tasks/abc185_b
// simulation

#include <iostream>

using namespace std;

int main() {
  int n, m, t;
  cin >> n >> m >> t;

  int bat = n;
  int a, b;
  int last = 0;
  for(int i = 0; i < m; ++i) {
    cin >> a >> b;
    bat -= a - last;
    if(bat <= 0) {
      cout << "No" << endl;
      return 0;
    }
    bat += b - a;
    if(bat > n) bat = n;
    last = b;
  }

  if(bat - (t - last) <= 0)
    cout << "No" << endl;
  else
    cout << "Yes" << endl;

  return 0;
}
