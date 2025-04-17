// vicfred
// https://codeforces.com/problemset/problem/245/D
// greedy
#include <iostream>
#include <vector>

using namespace std;

int main() {
  long long n;
  cin >> n;
  vector<vector<long long>> b(n, vector<long long>(n));
  for (int i = 0; i < n; ++i) {
    for (int j = 0; j < n; ++j) {
      cin >> b[i][j];
    }
  }
  vector<long long> a(n);
  for (int i = 0; i < n; ++i) {
    for (int j = 0; j < n; ++j) {
      if (i == j)
        continue;
      for (int bit = 0; bit < 31; ++bit) {
        if (b[i][j] & (1 << bit)) {
          //cout << b[i][j] << " " << i + 1 << " " << j + 1 << " tiene el bit "
          //     << bit << " prendido" << endl;
          a[i] |= (1 << bit);
          a[j] |= (1 << bit);
        }
      }
    }
  }
  for (int i = 0; i < n; ++i) {
    cout << a[i] << " ";
  }
  cout << endl;
  return 0;
}
