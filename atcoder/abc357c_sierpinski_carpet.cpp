// Vicfred
// https://atcoder.jp/contests/abc357/tasks/abc357_c
// implementation, recursion
#include <cmath>
#include <iostream>

using namespace std;

int n;
char grid[1000][1000];

void dfs(int n, int x, int y) {
  if (n == 0) {
    grid[x][y] = '#';
    return;
  }
  dfs(n - 1, x, y);
  dfs(n - 1, x, y + pow(3, n - 1));
  dfs(n - 1, x, y + pow(3, n - 1) * 2);
  dfs(n - 1, x + pow(3, n - 1), y);
  dfs(n - 1, x + pow(3, n - 1), y + pow(3, n - 1) * 2);
  dfs(n - 1, x + pow(3, n - 1) * 2, y);
  dfs(n - 1, x + pow(3, n - 1) * 2, y + pow(3, n - 1));
  dfs(n - 1, x + pow(3, n - 1) * 2, y + pow(3, n - 1) * 2);
  for (int i = 0; i < pow(3, n - 1); ++i) {
    for (int j = 0; j < pow(3, n - 1); ++j) {
      grid[x + (int)pow(3, n - 1) + i][y + (int)pow(3, n - 1) + j] = '.';
    }
  }
}

int main() {
  cin >> n;
  dfs(n, 1, 1);
  for (int i = 1; i <= pow(3, n); ++i) {
    for (int j = 1; j <= pow(3, n); ++j) {
      cout << grid[i][j];
    }
    cout << endl;
  }
  return 0;
}
