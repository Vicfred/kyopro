// Vicfred
// https://atcoder.jp/contests/abc327/tasks/abc327_a
// implementation
#include <iostream>
#include <string>

using namespace std;

int chars[30];

int main() {
  int N;
  cin >> N;
  string S;
  cin >> S;
  if(S.find("ab") != string::npos || S.find("ba") != string::npos) {
    cout << "Yes" << endl;
  } else {
    cout << "No" << endl;
  }
}
