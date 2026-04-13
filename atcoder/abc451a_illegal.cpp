// vicfred
// https://atcoder.jp/contests/abc451/tasks/abc451_a
// implementation
#include <iostream>

using namespace std;

int main() {
  string s;
  cin >> s;
  if(s.size() % 5 == 0) {
    cout << "Yes" << endl;
  } else {
    cout << "No" << endl;
  }
  return 0;
}
