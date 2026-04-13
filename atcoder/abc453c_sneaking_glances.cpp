// vicfred
// https://atcoder.jp/contests/abc453/tasks/abc453_c
// bitmask
#include <cstdint>
#include <iostream>
#include <vector>

using namespace std;

int main() {
  int N;
  cin >> N;
  vector<int64_t> L(N);
  for (int i = 0; i < N; ++i) {
    cin >> L[i];
  }
  int64_t maxima = -1;
  for (int mask = 0; mask < 1 << N; ++mask) {
    string s;
    long double dist = 0.5;
    int64_t times = 0;
    for (int j = 0; j < N; ++j) {
      if (mask & (1 << j)) {
        if(dist < 0 and dist + L[j] > 0) {
          times += 1;
        }
        dist += L[j];
      } else {
        if(dist > 0 and dist - L[j] < 0) {
          times += 1;
        }
        dist += -L[j];
      }
    }
    maxima = max(maxima, times);
  }
  cout << maxima << endl;
  return 0;
}
