// vicfred
// https://atcoder.jp/contests/abc310/tasks/abc310_a
// implementation
#include <algorithm>
#include <iostream>
#include <vector>

using namespace std;

int main() {
  int N, P, Q;
  cin >> N >> P >> Q;
  vector<long long> D(N);
  for (int i = 0; i < N; ++i) {
    cin >> D[i];
  }
  long long minima = P;
  for (int i = 0; i < N; ++i) {
    minima = min(minima, Q + D[i]);
  }
  cout << minima << endl;
  return 0;
}
