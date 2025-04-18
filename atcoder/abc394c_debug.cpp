// vicfred
// https://atcoder.jp/contests/abc394/tasks/abc394_c
// implementation
#include <iostream>
#include <string>

using namespace std;

int main() {
  string s;
  cin >> s;
  int n = (int)s.size();
  int cursor = 0;
  while(cursor < n - 1) {
    if(s[cursor] == 'W' and s[cursor + 1] == 'A') {
      s[cursor] = 'A';
      s[cursor + 1] = 'C';
      if(cursor > 0) {
        cursor -= 1;
      }
    } else {
      cursor += 1;
    }
  }
  cout << s << endl;
}
