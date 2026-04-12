// Vicfred
// https://atcoder.jp/contests/abc453/tasks/abc453_a
// string manipulation
#include <iostream>
#include <string>

using namespace std;

int main() {
  int n;
  string s;
  cin >> n;
  cin >> s;
  int i = 0;
  while (s[i] == 'o' and i < n) {
    i += 1;
  }
  while (i < n) {
    cout << s[i++];
  }
  cout << endl;
  return 0;
}
