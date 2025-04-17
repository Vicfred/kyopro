// vicfred
// https://codeforces.com/contest/1692/problem/C
// brute force
#include <iostream>
#include <vector>

using namespace std;

int main() {
  int t;
  cin >> t;
  while (t--) {
    vector<string> grid(8);
    for (int i = 0; i < 8; ++i) {
      cin >> grid[i];
    }
    for (int i = 1; i <= 6; ++i) {
      for (int j = 1; j <= 6; ++j) {
        if (grid[i][j] == '#' and grid[i - 1][j - 1] == '#' and
            grid[i - 1][j + 1] == '#' and grid[i + 1][j - 1] == '#' and
            grid[i + 1][j + 1] == '#') {
          cout << i + 1 << " " << j + 1 << endl;
        }
      }
    }
  }
  return 0;
}
