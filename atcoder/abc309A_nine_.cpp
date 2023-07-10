// Vicfred
// https://atcoder.jp/contests/abc309/tasks/abc309_a
// implementation
#include <iostream>

using namespace std;

int main() {
  int A, B;
  cin >> A >> B;
  int row_A = (A + 3 - 1) / 3;
  int row_B = (B + 3 - 1) / 3;
  if(B - A == 1 and row_A == row_B) {
    cout << "Yes" << endl;
  } else {
    cout << "No" << endl;
  }
  return 0;
}
