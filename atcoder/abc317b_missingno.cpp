// Vicfred
// https://atcoder.jp/contests/abc317/tasks/abc317_b
// implementation
#include <algorithm>
#include <iostream>
#include <set>
#include <vector>

using namespace std;

int seen[1001];

int main() {
  int N;
  cin >> N;
  vector<int> A(N);
  for (int i = 0; i < N; ++i) {
    cin >> A[i];
    seen[A[i]] = 1;
  }
  int minima = 1 << 30;
  int maxima = -1;
  for (int i = 0; i < N; ++i) {
    minima = min(minima, A[i]);
    maxima = max(maxima, A[i]);
  }
  for (int i = minima; i < maxima; ++i) {
    if(seen[i] == 0) {
      cout << i << endl;
    }
  }
  return 0;
}
