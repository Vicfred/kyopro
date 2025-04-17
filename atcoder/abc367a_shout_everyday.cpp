// vicfred
// https://atcoder.jp/contests/abc367/tasks/abc367_a
// implementation
#include <iostream>

using namespace std;

int main() {
  int A, B, C;
  cin >> A >> B >> C;
  if (B > C) {
    if(A > C and A < B) {
      cout << "Yes" << endl;
    } else {
      cout << "No" << endl;
    }
    return 0;
  }
  if (A < B or A >= C) {
    cout << "Yes" << endl;
  } else {
    cout << "No" << endl;
  }
  return 0;
}
