// vicfred
// https://atcoder.jp/contests/abc452/tasks/abc452_c
// backtracking
// currently TLE
#include <cstdint>
#include <iostream>
#include <string>
#include <vector>

using namespace std;

int N;
vector<int64_t> A, B;
int64_t M;
vector<string> S;
string s;
bool backtrack(int idx) {
  // cout << "backtrack idx: " << idx << endl;
  // cout << s << endl;
  // cout << s.size() << endl;
  // cout << "M: " << M << endl;
  if (idx == s.size() - 1) {
    for (int i = 0; i < M; ++i) {
      if (S[i].size() < A[idx]) {
        continue;
      }
      // cout << "S[" << i << "]: " << S[i] << endl;
      // cout << "considerando " << S[i] << " en la ultima casilla" << endl;
      if (S[i].size() == A[idx] and S[i][B[idx] - 1] == s[idx]) {
        // cout << "========found=========" << endl;
        return true;
      }
    }
    return false;
  }
  bool found = false;
  for (int i = 0; i < M; ++i) {
    if (S[i].size() < A[idx]) {
      continue;
    }
    if (S[i].size() == A[idx] and S[i][B[idx] - 1] == s[idx]) {
      // cout << "considerando " << S[i] << endl;
      // cout << "comparando " << S[i][idx] << " con " << s[idx] << endl;
      found = found || backtrack(idx + 1);
    }
  }
  return found;
}

int main() {
  cin >> N;
  A = vector<int64_t>(N);
  B = vector<int64_t>(N);
  for (int i = 0; i < N; ++i) {
    cin >> A[i] >> B[i];
  }
  cin >> M;
  S = vector<string>(M);
  for (int i = 0; i < M; i++) {
    cin >> S[i];
  }
  // cout << "olis" << endl;
  // for (int i = 0; i < N; ++i) {
  //   cout << A[i] << " " << B[i] << endl;
  // }
  // for (int i = 0; i < M; ++i) {
  //   cout << S[i] << endl;
  // }
  for (int i = 0; i < M; ++i) {
    s = S[i];
    // cout << "====" << s << "====" << endl;
    if (backtrack(0)) {
      cout << "Yes" << endl;
    } else {
      cout << "No" << endl;
    }
  }
  return 0;
}
