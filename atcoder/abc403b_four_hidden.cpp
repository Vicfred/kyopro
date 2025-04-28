// vicfred
// https://atcoder.jp/contests/abc403/tasks/abc403_b
// implementation, brute force
#include <iostream>
#include <string>

using namespace std;

int main() {
  string T, U;
  cin >> T;
  cin >> U;
  int n = T.size();
  int m = U.size();
  bool found = false;
  for(int i = 0; i + m - 1 < n; i++) {
    // cout << T[i] << endl;
    bool valid = true;
    for(int j = 0; j < m; ++j) {
      if(T[i + j] != U[j] and T[i + j] != '?') {
        valid = false;
      }
    }
    if(valid) {
      found = true;
      // cout << "Found at: " << i << endl;
    }
  }
  cout << (found ? "Yes" : "No") << endl;
  return 0;
}
