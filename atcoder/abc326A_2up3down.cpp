// vicfred
// https://atcoder.jp/contests/abc326/tasks/abc326_a
// implementation
#include <iostream>

using namespace std;

int main() {
  int X, Y;
  cin >> X >> Y;
  if(X - Y < -2 or X - Y > 3) {
    cout << "No" << endl;
  } else {
    cout << "Yes" << endl;
  }
  return 0;
}
