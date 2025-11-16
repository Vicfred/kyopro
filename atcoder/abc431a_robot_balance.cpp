// vicfred
// https://atcoder.jp/contests/abc431/tasks/abc431_a
// implementation
#include <iostream>

using namespace std;

int main() {
  int H, B;
  cin >> H >> B;
  cout << max(0, H - B) << endl;
  return 0;
}
