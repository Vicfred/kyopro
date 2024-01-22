// Vicfred
// https://atcoder.jp/contests/abc337/tasks/abc337_a
// implementation
#include <iostream>

using namespace std;

int main() {
  int N;
  cin >> N;
  int X, Y;
  X = Y = 0;
  for(int i = 0; i < N; ++i) {
    int x, y;
    cin >> x >> y;
    X += x;
    Y += y;
  }
  if (X < Y) {
    cout << "Aoki" << endl;
  } else if (X > Y) {
    cout << "Takahashi" << endl;
  } else {
    cout << "Draw" << endl;
  }
  return 0;
}
