// Vicfred
// https://atcoder.jp/contests/abc314/tasks/abc314_b
// greedy
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
  int minima = 1e6;
  int ans = 0;
  for (int i = 0; i < N; ++i) {
    for (const auto &item : A[i]) {
      if (item == X) {
        candidates.insert(i + 1);
        minima = min(minima, C[i]);
      }
    }
  }
  set<int> printed;
  for(const auto &item : candidates) {
    if(C[item - 1] == minima) {
      printed.insert(item);
    }
  }
  cout << printed.size() << endl;
  for(const auto& item: printed) {
    cout << item << " ";
  }
  cout << endl;
  return 0;
}
