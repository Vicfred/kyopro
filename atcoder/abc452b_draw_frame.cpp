// vicfred
// https://atcoder.jp/contests/abc452/tasks/abc452_b
// implementation
#include <cstdint>
#include <iostream>

using namespace std;

int main() {
  int64_t H, W;
  cin >> H >> W;
  for(int i = 0; i < W; ++i) {
    cout << '#';
  }
  cout << endl;
  for(int i = 0; i < H - 2; ++i) {
    cout << '#';
    for(int j = 0; j < W - 2; ++j) {
      cout << '.';
    }
    cout << '#' << endl;
  }
  for(int i = 0; i < W; ++i) {
    cout << '#';
  }
  cout << endl;
  return 0;
}
