// Vicfred
// https://atcoder.jp/contests/abc338/tasks/abc338_a
// implementation
#include <iostream>

using namespace std;

int main() {
  string S;
  cin >> S;
  bool valid = true;
  if((S[0] - 'A' + 1) > 26) {
    valid = false;
  }
  for(int i = 1; i < S.size(); ++i) {
    if((S[i] - 'A' + 1) <= 26) {
      valid = false;
      break;
    }
  }
  if(valid) {
    cout << "Yes" << endl;
  } else {
    cout << "No" << endl;
  }
  return 0;
}
