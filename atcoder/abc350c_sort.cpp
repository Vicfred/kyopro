// Vicfred
// https://atcoder.jp/contests/abc350/tasks/abc350_c
// math, data structures
#include <iostream>
#include <algorithm>
#include <map>
#include <utility>
#include <vector>

using namespace std;

int main() {
  int N;
  cin >> N;
  vector<int> A(N+1);
  map<int, int> positions;
  for(int i = 1; i <= N; ++i) {
    cin >> A[i];
    positions[A[i]] = i;
  }
  vector<pair<int,int>> swaps;
  for(int i = 1; i <= N; ++i) {
    if(positions[i] != i) {
      swaps.push_back({i, positions[i]});
      positions[A[i]] = positions[i];
      A[positions[i]] = A[i];
    }
  }
  cout << swaps.size() << endl;
  for(const auto&[i,j] : swaps) {
    cout << i << " " << j << endl;
  }
  return 0;
}
