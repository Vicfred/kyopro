// Vicfred
// https://atcoder.jp/contests/abc323/tasks/abc323_a
// implementation
#include <iostream>

using namespace std;

int main() {
  string S;
  cin >> S;
  int N = S.size();
  bool flag = true;
  for (int i = 0; i < N; ++i) {
    if (S[i + 1] == '1' and i % 2 == 0) {
      flag = false;
      break;
    }
  }
  if (flag) {
    cout << "Yes" << endl;
  } else {
    cout << "No" << endl;
  }
  return 0;
}
