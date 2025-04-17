// vicfred
// https://atcoder.jp/contests/abc356/tasks/abc356_c
// brute force, bitmask
#include <iostream>
#include <vector>

using namespace std;

int main() {
  int N, M, K;
  cin >> N >> M >> K;
  vector<int> C(M);
  vector<char> R(M);
  vector<vector<int>> A(M);
  for (int i = 0; i < M; ++i) {
    cin >> C[i];
    A[i] = vector<int>(C[i]);
    for (int j = 0; j < C[i]; ++j) {
      cin >> A[i][j];
    }
    cin >> R[i];
  }
  long long answer = 0LL;
  for (int mask = 0; mask < (1 << N); ++mask) {
    // cout << "mask: " << mask << endl;
    bool valid = true;
    for (int i = 0; i < M; ++i) {
      int valid_keys = 0;
      for (int key = 0; key < C[i]; ++key) {
        if (mask & (1 << (A[i][key] - 1))) {
          valid_keys += 1;
        }
      }
      // cout << "A[" << i << "]:" << endl;
      // for (int idx = 0; idx < C[i]; ++idx) {
      //   cout << A[i][idx] << " ";
      // }
      // cout << endl;
      // cout << "valid keys: " << valid_keys << endl;
      if ((valid_keys >= K and R[i] == 'x') or
          (valid_keys < K and R[i] == 'o')) {
        valid = false;
        break;
      }
    }
    // cout << "=====" << endl;
    if (valid) {
      answer += 1LL;
    }
  }
  cout << answer << endl;
  return 0;
}
