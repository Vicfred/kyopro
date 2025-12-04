#include <iostream>
#include <string>
#include <vector>

using namespace std;

int main() {
  vector<string> rows;
  string line;
  while(cin >> line) {
    rows.push_back(line);
  }
  int n = rows.size();
  int m = rows[0].size();;
  for(int i = 0; i < n; ++i) {
    cout << rows[i] << endl;
  }
  cout << "n: " << n << endl;
  cout << "m: " << m << endl;
  int ans = 0;
  for(int i = 0; i < n; ++i) {
    for(int j = 0; j < m; ++j) {
      if(rows[i][j] == '.') {
        continue;
      }
      int neighbors = 0;
      cout << "visiting: " << "(" << i << "," << j << "): " << rows[i][j] << endl;
      for(int dx = -1; dx <= 1; ++dx) {
        for(int dy = -1; dy <= 1; ++dy) {
          if(dx == 0 && dy == 0) {
            continue;
          }
          int nx = i + dx;
          int ny = j + dy;
          if(0 <= nx && nx < n && 0 <= ny && ny < m) {
            cout << "(" << nx << "," << ny << "): " << rows[nx][ny] << endl;
            if(rows[nx][ny] == '@') {
              neighbors += 1;
            }
          }
        }
      }
      if(neighbors < 4) {
        ans += 1;
      }
    }
  }
  cout << ans << endl;
  return 0;
}
