// vicfred
// https://atcoder.jp/contests/abc365/tasks/abc365_a
// implementation
#include <iostream>

using namespace std;

int main() {
  int Y;
  cin >> Y;
  if(Y % 4 != 0) {
    cout << 365 << endl;
  } else if(Y % 4 == 0 and Y % 100 != 0) {
    cout << 366 << endl;
  } else if(Y % 100 == 0 and Y % 400 != 0) {
    cout << 365 << endl;
  } else if (Y % 400 == 0) {
    cout << 366 << endl;
  }
  return 0;
}
