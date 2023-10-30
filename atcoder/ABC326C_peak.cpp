// Vicfred
// https://atcoder.jp/contests/abc326/tasks/abc326_c
// greedy, sorting
#include <algorithm>
#include <iostream>
#include <iterator>
#include <vector>

using namespace std;

int main() {
  long long N, M;
  cin >> N >> M;
  vector<long long> A(N);
  for (long long i = 0; i < N; ++i) {
    cin >> A[i];
  }
  long long maxima = 0;
  sort(begin(A), end(A));
  for (auto i = begin(A); i != end(A); ++i) {
    // cout << "cheking: " << *i << "," << *i + M << endl;
    auto lower = lower_bound(i, end(A), *i + M);
    long long gifts = distance(i, lower);
    maxima = max(maxima, gifts);
    // cout << "index: " << distance(i, lower) << endl;
  }
  cout << maxima << endl;
  return 0;
}
