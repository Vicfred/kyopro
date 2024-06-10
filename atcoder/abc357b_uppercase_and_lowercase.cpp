// Vicfred
// https://atcoder.jp/contests/abc357/tasks/abc357_b
// implementation
#include <iostream>
#include <string>
#include <cctype>

using namespace std;

int main () {
  string S;
  cin >> S;
  int upper, lower;
  upper = lower = 0;
  for(int i = 0; i < S.size(); ++i) {
    if((S[i] - 'A') < 32) {
      upper++;
    } else {
      lower++;
    }
  }
  if(upper > lower) {
    for(int i = 0; i < S.size(); ++i) {
      cout << (char)toupper(S[i]);
    }
  } else {
    for(int i = 0; i < S.size(); ++i) {
      cout << (char)tolower(S[i]);
    }
  }
  cout << endl;
  return 0;
}
