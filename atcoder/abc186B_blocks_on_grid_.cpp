// uninhm
// https://atcoder.jp/contests/abc186/tasks/abc186_b
// implementation

#include <iostream>

using namespace std;

int main() {
  int h, w;
  cin >> h >> w;

  int minimum = 1 << 30;

  int grid[h*w];

  int x;
  for(int i = 0; i < h*w; ++i) {
    cin >> x;
    if(x < minimum)
      minimum = x;

    grid[i] = x;
  }

  int ans = 0;
  for(const int& i: grid)
    ans += i - minimum;

  cout << ans << endl;
}
