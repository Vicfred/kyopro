// Vicfred
// https://atcoder.jp/contests/abc314/tasks/abc314_b
// brute force
#include <algorithm>
#include <iostream>
#include <set>
#include <vector>

using namespace std;

int main() {
  int N;
  cin >> N;
  vector<int> C(N);
  vector<vector<int>> A(N);
  for (int i = 0; i < N; ++i) {
    cin >> C[i];
    vector<int> outcomes(C[i]);
    for (int j = 0; j < C[i]; ++j) {
      cin >> outcomes[j];
    }
    A[i] = outcomes;
  }
  int X;
  cin >> X;
  set<int> candidates;
  for (int i = 0; i < N; ++i) {
    for (const auto &item : A[i]) {
      if (item == X) {
        candidates.insert(i);
      }
    }
  }
  /*
  for (const auto &item : candidates) {
    cout << item + 1 << endl;
  }
  cout << "===" << endl;
  */
  set<int> prints;
  for (int i = 0; i < N; ++i) {
    if (candidates.count(i) == 0) {
      continue;
    }
    // cout << "analyzing " << i + 1 << endl;
    bool flag = true;
    for (int j = 0; j < N; ++j) {
      if (i != j and candidates.count(j) and C[i] > C[j]) {
        flag = false;
      }
    }
    if (flag) {
      prints.insert(i + 1);
    }
  }
  if (prints.size() == 0) {
    cout << 0 << endl;
    return 0;
  }
  cout << prints.size() << endl;
  for(const auto& item : prints) {
    cout << item << " ";
  }
  cout << endl;
  return 0;
}
