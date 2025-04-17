// vicfred
// https://atcoder.jp/contests/abc337/tasks/abc337_b
// implementation
#include <iostream>
#include <string>

using namespace std;

int main() {
  string S;
  cin >> S;
  int idx = 0;
  while (S[idx] == 'A') {
    idx += 1;
  }
  while(S[idx] == 'B') {
    idx += 1;
  }
  while(S[idx] == 'C') {
    idx += 1;
  }
  if(idx == S.size()) {
    cout << "Yes" << endl;
  } else {
    cout << "No" << endl;
  }
  return 0;
}
