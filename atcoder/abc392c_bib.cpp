// vicfred
// https://atcoder.jp/contests/abc392/tasks/abc392_c
// data structures, dictionary
#include <cstdint>
#include <iostream>
#include <vector>

using namespace std;

int main() {
  int64_t n;
  cin >> n;
  vector<int64_t> p(n + 1), q(n + 1), bib(n + 1);
  for(int i = 1; i <= n; ++i) {
    cin >> p[i];
  }
  for(int i = 1; i <= n; ++i) {
    cin >> q[i];
    bib[q[i]] = i;
  }
  for(int i = 1; i <= n; ++i) {
    cout << q[p[bib[i]]] << " \n"[i == n ? 1 : 0];
  }
  return 0;
}
