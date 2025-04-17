// vicfred
// https://atcoder.jp/contests/abc393/tasks/abc393_a
// implementation
#include <iostream>
#include <string>

using namespace std;

int main() {
  string s1, s2;
  cin >> s1 >> s2;
  if(s1 == "fine" and s2 == "fine") {
    cout << "4" << endl;
  }
  if(s1 == "fine" and s2 == "sick") {
    cout << "3" << endl;
  }
  if(s1 == "sick" and s2 == "fine") {
    cout << "2" << endl;
  }
  if(s1 == "sick" and s2 == "sick") {
    cout << "1" << endl;
  }
  return 0;
}
