// uninhm
// https://atcoder.jp/contests/abc186/tasks/abc186_b
// implementation

#include <iostream>
#include <vector>

using namespace std;

int main() {
  int h, w;
  cin >> h >> w;

  int minimum = 1 << 30;

  vector<int> grid;
  grid.reserve(h*w+10);

  int x;
  for(int i = 0; i < h*w; ++i) {
    cin >> x;
    if(x < minimum)
      minimum = x;

    grid.push_back(x);
  }

  int ans = 0;
  for(const int& i: grid)
    ans += i - minimum;

  cout << ans << endl;
}
