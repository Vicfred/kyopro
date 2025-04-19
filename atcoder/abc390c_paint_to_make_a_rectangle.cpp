// vicfred
// https://atcoder.jp/contests/abc390/tasks/abc390_c
// implementation
#include <algorithm>
#include <cstdint>
#include <iostream>
#include <string>
#include <vector>

using namespace std;

int main() {
  int64_t h, w;
  cin >> h >> w;
  vector<string> S(h);
  for(int i = 0; i < h; ++i) {
    cin >> S[i];
  }
  int64_t maxX, maxY, minX, minY;
  maxX = maxY = INT64_MIN;
  minX = minY = INT64_MAX;
  for(int64_t i = 0; i < h; ++i) {
    for(int64_t j = 0; j < w; ++j) {
      if(S[i][j] == '#') {
        minX = min(minX, j);
        minY = min(minY, i);
        maxX = max(maxX, j);
        maxY = max(maxY, i);
      }
    }
  }
  bool flag = true;
  for(int i = minY; i <= maxY; ++i) {
    for(int j = minX; j <= maxX; ++j) {
      if(S[i][j] == '.') {
        flag = false;
      }
    }
  }
  cout << (flag ? "Yes" : "No") << endl;
  return 0;
}
