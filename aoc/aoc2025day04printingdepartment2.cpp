#include <iostream>
#include <string>
#include <vector>
#include <queue>
#include <cstdint>

using namespace std;

int main() {
  vector<string> rows;
  string line;
  while (cin >> line) {
    rows.push_back(line);
  }

  int64_t n = rows.size();
  if (n == 0) {
    cout << 0 << endl;
    return 0;
  }
  int64_t m = rows[0].size();

  vector<vector<int64_t>> deg(n, vector<int64_t>(m, 0));
  vector<vector<char>> active(n, vector<char>(m, 0));

  for (int64_t i = 0; i < n; i++) {
    for (int64_t j = 0; j < m; j++) {
      if (rows[i][j] == '@') {
        active[i][j] = 1;
      }
    }
  }

  int dxs[3] = {-1, 0, 1};
  int dys[3] = {-1, 0, 1};

  for (int64_t i = 0; i < n; i++) {
    for (int64_t j = 0; j < m; j++) {
      if (!active[i][j]) {
        continue;
      }
      int64_t cnt = 0;
      for (int64_t a = 0; a < 3; a++) {
        for (int64_t b = 0; b < 3; b++) {
          int64_t dx = dxs[a];
          int64_t dy = dys[b];
          if (dx == 0 && dy == 0) {
            continue;
          }
          int64_t nx = i + dx;
          int64_t ny = j + dy;
          if (0 <= nx && nx < n && 0 <= ny && ny < m) {
            if (active[nx][ny]) {
              cnt++;
            }
          }
        }
      }
      deg[i][j] = cnt;
    }
  }

  queue<pair<int64_t, int64_t>> q;
  for (int64_t i = 0; i < n; i++) {
    for (int64_t j = 0; j < m; j++) {
      if (active[i][j] && deg[i][j] < 4) {
        q.push({i, j});
      }
    }
  }

  int64_t removed = 0;

  while (!q.empty()) {
    pair<int64_t, int64_t> cur = q.front();
    q.pop();
    int64_t i = cur.first;
    int64_t j = cur.second;
    if (!active[i][j]) {
      continue;
    }
    if (deg[i][j] >= 4) {
      continue;
    }
    active[i][j] = 0;
    removed++;

    for (int64_t a = 0; a < 3; a++) {
      for (int64_t b = 0; b < 3; b++) {
        int64_t dx = dxs[a];
        int64_t dy = dys[b];
        if (dx == 0 && dy == 0) {
          continue;
        }
        int64_t nx = i + dx;
        int64_t ny = j + dy;
        if (0 <= nx && nx < n && 0 <= ny && ny < m) {
          if (active[nx][ny]) {
            deg[nx][ny]--;
            if (deg[nx][ny] < 4) {
              q.push({nx, ny});
            }
          }
        }
      }
    }
  }

  cout << removed << endl;
  return 0;
}

