// vicfred
// https://atcoder.jp/contests/abc302/tasks/abc302_c
// brute force, permutations
#include <algorithm>
#include <iostream>
#include <vector>

using namespace std;

int hamming(string S, string T) {
  int dist = 0;
  int n = S.size();
  for (int i = 0; i < n; ++i) {
    if (S[i] != T[i]) {
      ++dist;
    }
  }
  return dist;
}

int main() {
  int N, M;
  cin >> N >> M;
  vector<string> S(N);
  for (int i = 0; i < N; ++i) {
    cin >> S[i];
  }
  sort(begin(S), end(S));
  bool found = false;
  do {
    bool valid = true;
    for (int i = 0; i < N - 1; ++i) {
      if (hamming(S[i], S[i + 1]) != 1) {
        valid = false;
        break;
      }
    }
    if (valid) {
      found = true;
      break;
    }
  } while (next_permutation(begin(S), end(S)));
  if (found) {
    cout << "Yes" << endl;
  } else {
    cout << "No" << endl;
  }
  return 0;
}
