// vicfred
// https://atcoder.jp/contests/abc197/tasks/abc197_b
// brute force
#include <iostream>
#include <ratio>
#include <vector>

using namespace std;

int main() {
  int h, w, x, y;
  cin >> h >> w >> x >> y;
  x -= 1;
  y -= 1;
  vector<string> S(h);
  for (int i = 0; i < h; ++i) {
    cin >> S[i];
  }
  if (S[x][y] == '#') {
    cout << 0 << endl;
    return 0;
  }
  int ans = 0;
  for (int i = 0; i < w; ++i) {
    if (S[x][i] == '#') {
      continue;
    }
    // S[x][i] <-> S[x][y]
    if (i == y) {
      ans += 1;
      // cout << x + 1 << "," << i + 1 << endl;
    } else if (i < y) {
      bool obstacle = false;
      for (int j = i; j < y; ++j) {
        if (S[x][j] == '#') {
          obstacle = true;
          break;
        }
      }
      if (!obstacle) {
        ans += 1;
        // cout << x + 1 << "," << i + 1 << endl;
      }
    } else {
      bool obstacle = false;
      for (int j = i; j > y; --j) {
        if (S[x][j] == '#') {
          obstacle = true;
          break;
        }
      }
      if (!obstacle) {
        ans += 1;
        //cout << x + 1 << "," << i + 1 << endl;
      }
    }
  }
  for (int i = 0; i < h; ++i) {
    if (S[i][y] == '#') {
      continue;
    }
    // S[i][y] <-> S[x][y]
    if (i == x) {
      ans += 1;
      // cout << i + 1 << "," << y + 1 << endl;
    } else if (i < x) {
      bool obstacle = false;
      for (int j = i; j < x; ++j) {
        if (S[j][y] == '#') {
          obstacle = true;
          break;
        }
      }
      if (!obstacle) {
        ans += 1;
        // cout << i + 1 << "," << y + 1 << endl;
      }
    } else {
      bool obstacle = false;
      for (int j = i; j > x; --j) {
        if (S[j][y] == '#') {
          obstacle = true;
          break;
        }
      }
      if (!obstacle) {
        ans += 1;
        // cout << i + 1 << "," << y + 1 << endl;
      }
    }
  }
  ans -= 1;
  cout << ans << endl;
  return 0;
}
