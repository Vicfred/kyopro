// vicfred
// https://codeforces.com/contest/1722/problem/B
// implementation
#include <iostream>

using namespace std;

int main() {
  int t;
  cin >> t;
  while (t--) {
    int n;
    cin >> n;
    string row1, row2;
    cin >> row1 >> row2;
    bool same = true;
    for (int i = 0; i < n; ++i) {
      if (row1[i] != row2[i]) {
        if (row1[i] == 'G' and row2[i] == 'B' or
            row1[i] == 'B' and row2[i] == 'G') {
          continue;
        } else {
          same = false;
          break;
        }
      }
    }
    if (same) {
      cout << "YES" << endl;
    } else {
      cout << "NO" << endl;
    }
  }
  return 0;
}
