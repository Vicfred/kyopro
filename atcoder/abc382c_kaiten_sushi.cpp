// vicfred
// https://atcoder.jp/contests/abc382/tasks/abc382_c
// binary search
#include <cstdint>
#include <iostream>
#include <utility>
#include <vector>

using namespace std;

int main() {
  int64_t n, m;
  cin >> n >> m;
  vector<int64_t> as(n);
  vector<int64_t> bs(m);
  for (int i = 0; i < n; i++) {
    cin >> as[i];
  }
  for (int i = 0; i < m; i++) {
    cin >> bs[i];
  }
  vector<pair<int64_t, int64_t>> people;
  int64_t minima = INT64_MAX;
  for (int i = 0; i < n; i++) {
    if (as[i] < minima) {
      people.push_back({as[i], i + 1});
      minima = as[i];
    }
  }
  for (int i = 0; i < m; ++i) {
    int64_t l, r;
    l = 0;
    r = people.size() - 1;
    while (l <= r) {
      int64_t mid = (l + r) / 2;
      if(people[mid].first <= bs[i]) {
        r = mid - 1;
      } else {
        l = mid + 1;
      }
    }
    if(l >= (int64_t)people.size()) {
      cout << -1 << endl;
      continue;
    }
    cout << people[l].second << endl;
  }
  return 0;
}
