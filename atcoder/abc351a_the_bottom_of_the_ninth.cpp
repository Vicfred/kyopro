// vicfred
// https://atcoder.jp/contests/abc351/tasks/abc351_a
// math
#include <iostream>

using namespace std;

int main() {
  int a = 0;
  for(int i = 0; i < 9; ++i) {
    int ins;
    cin >> ins;
    a += ins;
  }
  int b = 0;
  for(int i = 0; i < 8; ++i) {
    int ins;
    cin >> ins;
    b += ins;
  }
  int res = a - b;
  res += 1;
  cout << res << endl;
}
