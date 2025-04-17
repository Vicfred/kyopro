// vicfred
// https://atcoder.jp/contests/abc322/tasks/abc322_a
// implementation
#include <iostream>
#include <string>

using namespace std;

int main() {
  int N;
  cin >> N;
  string T;
  cin >> T;
  int ans = -1;
  for(int i = 0; i + 2 < N; ++i) {
    if(T.substr(i, 3) == "ABC") {
      ans = i + 1;
      break;
    }
  }
  cout << ans << endl;
  return 0;
}
