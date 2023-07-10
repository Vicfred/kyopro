// Vicfred
// https://atcoder.jp/contests/abc309/tasks/abc309_a
// implementation
#include <iostream>

using namespace std;

int main() {
  int A, B;
  cin >> A >> B;
  if (A == 1 and B == 2 or A == 2 and B == 3 or
      A == 4 and B == 5 or A == 5 and B == 6 or
      A == 7 and B == 8 or A == 8 and B == 9) {
    cout << "Yes" << endl;
  } else {
    cout << "No" << endl;
  }
  return 0;
}
