// vicfred
// https://atcoder.jp/contests/abc378/tasks/abc378_c
// data structures, dictionary
#include <cstdint>
#include <iostream>
#include <map>
#include <vector>

using namespace std;

int main() {
  int64_t n;
  cin >> n;
  vector<int64_t> as(n + 1), bs(n + 1, -1);
  for (int64_t i = 1; i <= n; ++i) {
    cin >> as[i];
  }
  map<int64_t, int64_t> seen;
  for (int i = 1; i <= n; ++i) {
    if (seen.count(as[i]) == 0) {
      bs[i] = -1;
    } else {
      bs[i] = seen[as[i]];
    }
    seen[as[i]] = i;
  }
  for(int i = 1; i <= n; ++i) {
    cout << bs[i] << "\n "[i == n ? 0 : 1];
  }
  return 0;
}
