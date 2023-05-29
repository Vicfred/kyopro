// Vicfred
// https://atcoder.jp/contests/abc301/tasks/abc301_a
// implementation
#include <iostream>
#include <string>

using namespace std;

int main() {
  int n;
  cin >> n;
  string s;
  cin >> s;
  int takahashi, aoki;
  takahashi = aoki = 0;
  for (const auto ch : s) {
    if (ch == 'T') {
      takahashi += 1;
    } else {
      aoki += 1;
    }
  }
  if (takahashi > aoki) {
    cout << "T" << endl;
  } else if (takahashi < aoki) {
    cout << "A" << endl;
  } else {
    char last = s[n - 1];
    if(last == 'T') {
      cout << "A" << endl;
    } else {
      cout << "T" << endl;
    }
  }
  return 0;
}
