// vicfred
// https://atcoder.jp/contests/abc336/tasks/abc336_b
// implementation
#include <iostream>

using namespace std;

int main() {
  long long N;
  cin >> N;
  string X;
  for (int bit = 0; bit < 32; ++bit) {
    if (N & (1 << bit)) {
      X += "1";
    } else {
      X += "0";
    }
  }
  int ans = 0;
  for(int i = 0; i < X.size(); ++i) {
    if(X[i] == '1') {
      break;
    }
    ans += 1;
  }
  cout << ans << endl;
  return 0;
}
