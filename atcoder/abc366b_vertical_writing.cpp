// vicfred
// https://atcoder.jp/contests/abc366/tasks/abc366_b
// implementation
#include <algorithm>
#include <iostream>
#include <string>
#include <vector>

using namespace std;

int main() {
  int N;
  cin >> N;
  vector<string> S(N);
  for (int i = 0; i < N; ++i) {
    cin >> S[i];
  }
  int M = 0;
  for (int i = 0; i < N; ++i) {
    M = max(M, (int)S[i].length());
  }
  vector<string> T(M, string(N, '*'));
  for (int i = 0; i < N; ++i) {
    for (int j = 0; j < (int)S[i].size(); ++j) {
      T[j][N - i - 1] = S[i][j];
    }
  }
  for (int i = 0; i < M; ++i) {
    while (T[i].back() == '*') {
      T[i].pop_back();
    }
    cout << T[i] << endl;
  }
  return 0;
}
