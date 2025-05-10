// vicfred
// https://atcoder.jp/contests/abc405/tasks/abc405_a
// implementation
#include <iostream>

using namespace std;

int main() {
  int r, x;
  cin >> r >> x;
  if(x == 1 and r >= 1600 and r < 3000) {
    cout << "Yes" << endl;
    return 0;
  }
  if(x == 2 and r >= 1200 and r < 2400) {
    cout << "Yes" << endl;
    return 0;
  }
  cout << "No" << endl;
  return 0;
}
