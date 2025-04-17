// vicfred
// https://atcoder.jp/contests/abc310/tasks/abc310_b
// brute force, data structures
#include <iostream>
#include <set>
#include <vector>

using namespace std;

int main() {
  long long int N, M;
  cin >> N >> M;
  vector<long long int> P(N);
  vector<set<int>> C(N);
  vector<vector<long long int>> F(N, vector<long long int>(M));
  for (int i = 0; i < N; ++i) {
    int c;
    cin >> P[i] >> c;
    for(int j = 0; j < c; ++j) {
      int f;
      cin >> f;
      C[i].insert(f);
    }
  }
  bool found = false;
  for (int i = 0; i < N; ++i) {
    for (int j = 0; j < N; ++j) {
      if (i == j)
        continue;
      if (P[i] < P[j])
        continue;
      bool valid = true;
      for (const auto &item : C[i]) {
        if (C[j].count(item) == 0) {
          valid = false;
        }
      }
      if (!valid) {
        continue;
      }
      if (P[i] > P[j]) {
        found = true;
      }
      for (const auto &item : C[j]) {
        if (C[i].count(item) == 0) {
          found = true;
        }
      }
    }
  }
  if (found) {
    cout << "Yes" << endl;
  } else {
    cout << "No" << endl;
  }
  return 0;
}
