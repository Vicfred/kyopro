// vicfred
// https://atcoder.jp/contests/abc395/tasks/abc395_b
// implementation
#include <iostream>
#include <string>
#include <vector>

using namespace std;

int main() {
  int N;
  cin >> N;
  vector<string> grid(N + 1);
  for(int i = 0; i <= N; ++i) {
    for(int j = 0; j <= N; ++j) {
      grid[i] += "#";
    }
  }
  for(int i = 1; i < N; ++i) {
    int j = N - i + 1;
    if(i <= j) {
      for(int k = i; k <= j; ++k) {
        for(int l = i; l <= j; ++l) {
          if(i%2 == 1) {
            grid[k][l] = '#';
          } else {
            grid[k][l] = '.';
          }
        }
      }
    }
  }
  for(int i = 1; i <= N; ++i) {
    // cout << grid[i] << endl;
    for(int j = 1; j <= N; ++j) {
      cout << grid[i][j];
    } cout << endl;
  }
  return 0;
}
