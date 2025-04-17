// vicfred
// https://atcoder.jp/contests/abc358/tasks/abc358_c
// brute force, bitmask
#include <iostream>
#include <vector>

using namespace std;

int countbits(int n) {
  int count = 0;
  while (n) {
    count += n & 1;
    n >>= 1;
  }
  return count;
}

int main() {
  int N, M;
  cin >> N >> M;
  vector<int> X(N);
  for (int i = 0; i < N; ++i) {
    string S;
    cin >> S;
    for (int j = 0; j < M; ++j) {
      if (S[j] == 'o') {
        X[i] = X[i] | (1 << j);
      }
    }
  }
  // for(int i = 0; i < N; ++i) {
  //   cout << X[i] << endl;
  // }
  int minima = 1 << 30;
  for (int mask = 0; mask < (1 << N); ++mask) {
    // cout << "mask: " << mask << endl;
    int stalls = 0;
    for (int bit = 0; bit < N; ++bit) {
      if (mask & (1 << bit)) {
        // cout << "bit " << bit << " prendido" << endl;
        stalls = stalls | X[bit];
        // cout << "adding: " << X[bit] << endl;
        // cout << "stalls: " << stalls << endl;
      }
    }
    bool valid = stalls == (1 << M) - 1;
    if (valid) {
      minima = min(minima, countbits(mask));
    }
  }
  cout << minima << endl;
  return 0;
}
