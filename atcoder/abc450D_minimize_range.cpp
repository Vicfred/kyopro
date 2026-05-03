// uninhm
// https://atcoder.jp/contests/abc450/tasks/abc450_d
// greedy

#include <climits>
#include <iostream>
#include <algorithm>

using namespace std;

int main() {
  int n, k;
  cin >> n >> k;

  int a[n];
  for (int i = 0; i < n; ++i) {
    cin >> a[i];
    a[i] %= k;
  }

  sort(a, a+n);

  int ans = INT_MAX;
  for (int i = 0; i < n; ++i) {
    int max_ = a[(i+n-1)%n];
    int min_ = a[i];

    ans = min(ans, max_ - min_);

    a[i] += k;
  }

  cout << ans << endl;
}
