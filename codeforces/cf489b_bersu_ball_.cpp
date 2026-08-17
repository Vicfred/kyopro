// vicfred
// https://codeforces.com/problemset/problem/489/B
// two pointers
#include <algorithm>
#include <cstdint>
#include <cstdlib>
#include <iostream>
#include <vector>

using namespace std;

int main() {
  int64_t n;
  cin >> n;

  vector<int64_t> boys(n);
  for (int64_t i = 0; i < n; ++i) {
    cin >> boys[i];
  }

  int64_t m;
  cin >> m;

  vector<int64_t> girls(m);
  for (int64_t i = 0; i < m; ++i) {
    cin >> girls[i];
  }

  sort(boys.begin(), boys.end());
  sort(girls.begin(), girls.end());

  int64_t i = 0;
  int64_t j = 0;
  int64_t couples = 0;

  while (i < n && j < m) {
    if (abs(boys[i] - girls[j]) <= 1) {
      // The weakest remaining boy and girl are compatible, pair them.
      couples += 1;
      i += 1;
      j += 1;
    } else if (boys[i] < girls[j]) {
      // This boy is too weak for the smallest remaining girl,
      // so he cannot match any later girl either.
      i += 1;
    } else {
      // This girl is too weak for the smallest remaining boy,
      // so she cannot match any later boy either.
      j += 1;
    }
  }

  cout << couples << endl;

  return 0;
}
