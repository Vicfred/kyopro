// Vicfred
// https://atcoder.jp/contests/abc315/tasks/abc315_a
// implementation
#include <iostream>

using namespace std;

int main() {
  string S;
  cin >> S;
  for (const char &ch : S) {
    if (ch == 'a' or ch == 'e' or ch == 'i' or ch == 'o' or ch == 'u') {
      continue;
    }
    cout << ch;
  }
  cout << endl;
  return 0;
}
