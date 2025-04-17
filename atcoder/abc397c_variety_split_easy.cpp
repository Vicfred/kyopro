// vicfred
// https://atcoder.jp/contests/abc397/tasks/abc397_c
// cumulative sum
#include <algorithm>
#include <cstdint>
#include <iostream>
#include <vector>

using namespace std;

int main() {
  int64_t n;
  cin >> n;
  vector<int64_t> A(n);
  for(auto &a : A) {
    cin >> a;
  }
  vector<int64_t> suml(n);
  vector<int64_t> sumr(n);
  vector<int64_t> visited(n + 1, 0);
  int64_t seen = 0;
  for(int i = 0; i < n; ++i) {
    if(visited[A[i]] == 0) {
      seen += 1;
    }
    visited[A[i]] = 1;
    suml[i] = seen;
  }
  visited = vector<int64_t>(n + 1, 0);
  seen = 0;
  for(int i = n - 1; i >=0; --i) {
    if(visited[A[i]] == 0) {
      seen += 1;
    }
    visited[A[i]] = 1;
    sumr[i] = seen;
  }
  int64_t maxima = INT64_MIN;
  for(int i = 0; i < n - 1; ++i) {
    maxima = max(maxima, suml[i] + sumr[i + 1]);
  }
  cout << maxima << endl;
  return 0;
}
