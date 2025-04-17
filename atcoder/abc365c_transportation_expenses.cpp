// vicfred
// https://atcoder.jp/contests/abc365/tasks/abc365_c
// binary search, sorting
#include <algorithm>
#include <iostream>
#include <vector>

using namespace std;

int main() {
  long long N, M;
  cin >> N >> M;
  vector<long long> A(N);
  for (int i = 0; i < N; ++i) {
    cin >> A[i];
  }
  sort(begin(A), end(A));
  vector<long long> cummulative(N, 0);
  cummulative[0] = A[0];
  for (int i = 1; i < N; ++i) {
    cummulative[i] = cummulative[i - 1] + A[i];
  }
  long long L, R;
  long long w = A[N - 1];
  L = 0;
  R = 100000000000LL;
  if (cummulative[N - 1] <= M) {
    cout << "infinite" << endl;
    return 0;
  }
  while (L < R) {
    long long m = (L + R + 1) / 2LL;
    long long cost = 0LL;
    for (int i = 0; i < N; ++i) {
      cost += min(m, A[i]);
    }
    if (cost > M) {
      R = m - 1;
    } else {
      L = m;
    }
  }
  cout << L << endl;
  return 0;
}
