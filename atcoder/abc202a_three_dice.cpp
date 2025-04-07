// vicfred
// https://atcoder.jp/contests/abc202/tasks/abc202_a
// implementation
#include <iostream>

using namespace std;

int abs(int a) {
  if(a < 0) {
    return -a;
  }
  else {
    return a;
  }
}

int main() {
  int a, b, c;
  cin >> a >> b >> c;
  cout << abs(a - 7) + abs(b - 7) + abs(c - 7) << endl;
  return 0;
}
