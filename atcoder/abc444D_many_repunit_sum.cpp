// uninhm
// https://atcoder.jp/contests/abc444/tasks/abc444_d
// binary search

#include <iostream>
#include <vector>
#include <algorithm>

using namespace std;

int main() {
  int n; cin >> n;
  vector<int> a(n);

  for (int i = 0; i < n; ++i)
    cin >> a[i];

  sort(a.begin(), a.end());

  vector<char> digits;
  {
    int carry = 0;
    int i = 1;
    int x = a.end() - lower_bound(a.begin(), a.end(), i);
    while (x + carry > 0) {
      int s = x + carry;
      digits.push_back('0' + s % 10);
      carry = s/10;
      i += 1;
      x = a.end() - lower_bound(a.begin(), a.end(), i);
    }
  }

  for (int i = digits.size() - 1; i >= 0; --i) {
    cout << digits[i];
  }
  cout << '\n';

  return 0;
}
