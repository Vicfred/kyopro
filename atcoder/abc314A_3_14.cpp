// vicfred
// https://atcoder.jp/contests/abc314/tasks/abc314_a
// implementation
#include <iostream>

using namespace std;

int main() {
  int N;
  cin >> N;
  string pi = "1415926535897932384626433832795028841971693993751058209749445923078164062862089986280348253421170679";
  cout << "3.";
  for(int i = 0; i < N; ++i) {
    cout << pi[i];
  }
  cout << endl;
  return 0;
}
