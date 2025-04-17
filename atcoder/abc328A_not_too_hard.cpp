// vicfred
// https://atcoder.jp/contests/abc328/tasks/abc328_a
// implementation
#include <iostream>

using namespace std;

int main() {
  int N, X;
  cin >> N >> X;
  int ans = 0;
  for (int i = 0; i < N; ++i) {
    int s;
    cin >> s;
    if (s <= X) {
      ans += s;
    }
  }
  cout << ans << endl;
  return 0;
}
