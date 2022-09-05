// Vicfred
// https://www.facebook.com/codingcompetitions/hacker-cup/2022/qualification-round/problems/B1
// greedy
#include <iostream>
#include <vector>

using namespace std;

int main() {
  int T;
  cin >> T;
  // cout << "T: " << T << endl;
  for (int kase = 1; kase <= T; ++kase) {
    int R, C;
    cin >> R >> C;
    // cout << "R: " << R << " " << "C: " << C << endl;
    bool fill = false;
    vector<vector<int>> paint(R, vector<int>(C));
    for (int i = 0; i < R; ++i) {
      for (int j = 0; j < C; ++j) {
        char ch;
        cin >> ch;
        if (ch == '^') {
          paint[i][j] = 1;
        }
        if (paint[i][j] == 1) {
          fill = true;
        }
      }
    }
    if (fill) {
      for (int i = 0; i < R; ++i) {
        for (int j = 0; j < C; ++j) {
          paint[i][j] = 1;
        }
      }
    }
    /*
    for (int i = 0; i < R; ++i) {
      for (int j = 0; j < C; ++j) {
        cout << paint[i][j];
      }
      cout << endl;
    }
    */
    bool valid = true;
    for (int i = 0; i < R; ++i) {
      for (int j = 0; j < C; ++j) {
        if (paint[i][j] == 0) {
          continue;
        }
        int friends = 0;
        if (i - 1 >= 0) {
          friends += 1;
        }
        if (i + 1 < R) {
          friends += 1;
        }
        if (j - 1 >= 0) {
          friends += 1;
        }
        if (j + 1 < C) {
          friends += 1;
        }
        if (friends < 2) {
          valid = false;
          // cout << "invalid at " << i << " " << j << endl;
        }
      }
    }
    if (valid) {
      cout << "Case #" << kase << ": Possible" << endl;
      for (int i = 0; i < R; ++i) {
        for (int j = 0; j < C; ++j) {
          if(paint[i][j] == 1) {
            cout << '^';
          } else {
            cout << '.';
          }
        }
        cout << endl;
      }
    } else {
      cout << "Case #" << kase << ": Impossible" << endl;
    }
  }
}
