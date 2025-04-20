// vicfred
// https://atcoder.jp/contests/abc383/tasks/abc383_c
// bfs
#include <algorithm>
#include <cstdint>
#include <iostream>
#include <queue>
#include <utility>
#include <vector>

using namespace std;

int abs(int x) {
  if(x < 0) {
    return -x;
  }
  return x;
}

int main() {
  int64_t h, w, d;
  cin >> h >> w >> d;
  vector<string> grid(h);
  for(int i = 0; i < h; ++i) {
    cin >> grid[i];
  }
  queue<pair<int, int>> q;
  vector<vector<int>> dist(h, vector<int>(w, INT32_MAX));
  for(int i = 0; i < h; ++i) {
    for(int j = 0; j < w; ++j) {
      if(grid[i][j] == 'H') {
        q.push({i, j});
        dist[i][j] = 0;
      }
    }
  }
  int dx[4] = {1, -1, 0, 0};
  int dy[4] = {0, 0, 1, -1};
  while(!q.empty()) {
    auto [x, y] = q.front();
    q.pop();
    int distance = dist[x][y];
    for(int k = 0; k < 4; ++k) {
      int nx = x + dx[k];
      int ny = y + dy[k];
      if(nx < 0 || nx >= h || ny < 0 || ny >= w) {
        continue;
      }
      if(grid[nx][ny] == '#') {
        continue;
      }
      if(dist[nx][ny] <= distance + 1) {
        continue;
      }
      dist[nx][ny] = distance + 1;
      q.push({nx, ny});
    }
  }
  int ans = 0;
  for(int i = 0; i < h; ++i) {
    for(int j = 0; j < w; ++j) {
      if(dist[i][j] <= d) {
        ans += 1;
      }
    }
  }
  cout << ans << endl;
  return 0;
}
