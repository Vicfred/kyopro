// vicfred
// https://atcoder.jp/contests/abc405/tasks/abc405_c
// math
#include <cstdint>
#include <iostream>
#include <vector>

using namespace std;

int main() {
  int64_t n;
  cin >> n;
  vector<int64_t> as(n);
  for (int i = 0; i < n; ++i) {
    cin >> as[i];
  }
  int64_t total_sum = 0LL;
  for(int64_t i = 0; i < n; ++i) {
    total_sum += as[i];
  }
  int64_t sum_squares = 0LL;
  for(int64_t i = 0; i < n; ++i) {
    sum_squares += as[i]*as[i];
  }
  cout << (int64_t)((total_sum*total_sum - sum_squares)/2LL) << endl;
}
