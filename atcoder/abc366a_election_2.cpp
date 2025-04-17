// vicfred
// https://atcoder.jp/contests/abc366/tasks/abc366_a
// implementation
#include <iostream>

using namespace std;

int main() {
  int N, T, A;
  cin >> N >> T >> A;
  if (T > N / 2 or A > N / 2) {
    cout << "Yes" << endl;
  } else {
    cout << "No" << endl;
  }
  return 0;
}
