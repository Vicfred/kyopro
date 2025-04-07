// vicfred
// https://atcoder.jp/contests/abc202/tasks/abc202_b
// implementation
#include <iostream>
#include <string>

using namespace std;

int main() {
  string s;
  cin >> s;
  string t;
  for(int i = s.length() - 1; i >= 0; --i) {
    char ch = s[i];
    if(ch == '6') {
      ch = '9';
    } else if(ch == '9') {
      ch = '6';
    }
    t += ch;
  }
  cout << t << endl;
  return 0;
}
