// Vicfred
// https://atcoder.jp/contests/abc391/tasks/abc391_b
// implementation
#include <iostream>
#include <string>
#include <vector>

using namespace std;

int main() {
  int N, M;
  cin >> N >> M;
  vector<string> S(N);
  vector<string> T(M);
  int a, b;
  a = b = 0;
  for (int i = 0; i < N; ++i) {
    cin >> S[i];
  }
  for (int i = 0; i < M; ++i) {
    cin >> T[i];
  }
  /*
  for (int i = 0; i < N; ++i) {
    for (int j = 0; j < N; ++j) {
      cout << S[i][j];
    }
    cout << endl;
  }
  for (int i = 0; i < M; ++i) {
    for (int j = 0; j < M; ++j) {
      cout << T[i][j];
    }
    cout << endl;
  }
  */
  for (int i = 0; i < N; ++i) {
    for (int j = 0; j < N; ++j) {
      bool valid = true;
      // cout << "checking " << i << "," << j << endl;
      for (int k = 0; k < M; ++k) {
        if (i + k >= N) {
          valid = false;
          break;
        }
        for (int l = 0; l < M; ++l) {
          if (j + l >= N) {
            valid = false;
            break;
          }
          if (S[i + k][j + l] != T[k][l]) {
            valid = false;
            // cout << "found invalid at " << k << "," << l << endl;
          }
        }
      }
      if (valid) {
        a = i;
        b = j;
      }
    }
  }
  cout << a + 1 << " " << b + 1 << endl;
  return 0;
}
