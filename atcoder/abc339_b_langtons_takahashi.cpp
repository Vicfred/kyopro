// Vicfred
// https://atcoder.jp/contests/abc339/tasks/abc339_b
// implementation
#include <iostream>
#include <string>
#include <vector>

using namespace std;

int main() {
  int H, W, N;
  cin >> H >> W >> N;
  vector<string> grid(H);
  for (int i = 0; i < W; ++i) {
    grid[0] += '.';
  }
  for (int i = 1; i < H; ++i) {
    grid[i] = grid[0];
  }
  int x, y;
  x = y = 0;
  int direction = 0;
  for (int i = 0; i < N; ++i) {
    if (grid[x][y] == '.') {
      grid[x][y] = '#';
      direction = (direction + 1) % 4;
    } else {
      grid[x][y] = '.';
      direction = (direction - 1 + 4) % 4;
    }
    if (direction == 0) {
      // move up
      x = (x - 1 + H) % H;
    } else if (direction == 1) {
      // move right
      y = (y + 1) % W;
    } else if (direction == 2) {
      // move down
      x = (x + 1) % H;
    } else {
      // move left
      y = (y - 1 + W) % W;
    }
  }
  for (int i = 0; i < H; ++i) {
    cout << grid[i] << endl;
  }
  return 0;
}
