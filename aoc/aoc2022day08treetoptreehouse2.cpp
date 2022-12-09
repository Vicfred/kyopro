// Vicfred
// https://adventofcode.com/2022/day/8
// implementation
#include <algorithm>
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
  int ans = 0;
  for (int i = 1; i < rows - 1; ++i) {
    for (int j = 1; j < cols - 1; ++j) {
      // cout << grid[i][j];
      int up = 0;
      for (int v = i - 1; v >= 0; --v) {
        up += 1;
        if (grid[v][j] >= grid[i][j]) {
          break;
        }
      }
      int down = 0;
      for (int v = i + 1; v < rows; ++v) {
        down += 1;
        if (grid[v][j] >= grid[i][j]) {
          break;
        }
      }
      int left = 0;
      for (int w = j - 1; w >= 0; --w) {
        left += 1;
        if (grid[i][w] >= grid[i][j]) {
          break;
        }
      }
      int right = 0;
      for (int w = j + 1; w < cols; w++) {
        right += 1;
        if (grid[i][w] >= grid[i][j]) {
          break;
        }
      }
      int score = up * down * left * right;
      ans = max(ans, score);
    }
    // cout << endl;
  }
  cout << ans << endl;
  return 0;
}
