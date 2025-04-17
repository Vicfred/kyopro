// vicfred
// https://atcoder.jp/contests/abc360/tasks/abc360_a
// implementation
#include <iostream>
#include <string>

using namespace std;

int main() {
  string S;
  cin >> S;
  if(S[0] == 'R') {
    cout << "Yes" << endl;
    return 0;
  } else if(S[1] == 'R' and S[2] == 'M') {
    cout << "Yes" << endl;
    return 0;
  }
  cout << "No" << endl;
  return 0;
}
