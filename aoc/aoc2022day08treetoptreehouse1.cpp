// vicfred
// https://adventofcode.com/2022/day/8
// implementation
#include <fstream>
#include <iostream>
#include <vector>

using namespace std;

int main() {
  vector<vector<int>> grid;
  ifstream input("input.txt");
  int rows, cols;
  rows = cols = 0;
  for (string line; getline(input, line);) {
    vector<int> row;
    for (const auto &ch : line) {
      row.push_back(ch - '0');
    }
    grid.push_back(row);
    cols = row.size();
  }
  rows = grid.size();
  int ans = 2 * cols + 2 * rows - 4;
  for (int i = 1; i < rows - 1; ++i) {
    for (int j = 1; j < cols - 1; ++j) {
      // cout << grid[i][j];
      bool visible = true;
      for (int v = 0; v < i; ++v) {
        if (grid[v][j] >= grid[i][j]) {
          visible = false;
          break;
        }
      }
      if(visible) {
        ans += 1;
        continue;
      }
      visible = true;
      for (int v = i + 1; v < rows; ++v) {
        if (grid[v][j] >= grid[i][j]) {
          visible = false;
          break;
        }
      }
      if(visible) {
        ans += 1;
        continue;
      }
      visible = true;
      for (int w = 0; w < j; ++w) {
        if (grid[i][w] >= grid[i][j]) {
          visible = false;
        }
      }
      if(visible) {
        ans += 1;
        continue;
      }
      visible = true;
      for (int w = j + 1; w < cols; ++w) {
        if (grid[i][w] >= grid[i][j]) {
          visible = false;
        }
      }
      if(visible) {
        ans += 1;
        continue;
      }
    }
    // cout << endl;
  }
  cout << ans << endl;
  return 0;
}
