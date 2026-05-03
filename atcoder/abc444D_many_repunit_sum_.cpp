// uninhm
// https://atcoder.jp/contests/abc444/tasks/abc444_d
// counting, cumulative sum

#include <iostream>
#include <vector>
#include <algorithm>

#define N 200001

using namespace std;

int main() {
  int n; cin >> n;
  static int c[N] = {};

  int m = 0;
  for (int i = 0; i < n; ++i) {
    int a; cin >> a;
    m = max(m, a);
    c[a]++;
  }

  static int gte[N];
  gte[m] = c[m];
  for (int i = m-1; i >= 1; --i) {
    gte[i] = c[i] + gte[i+1];
  }

  vector<char> digits;
  {
    int carry = 0;
    int i = 1;
    while (gte[i] + carry > 0) {
      int s = gte[i] + carry;
      digits.push_back('0' + s % 10);
      carry = s/10;
      i += 1;
    }
  }

  for (int i = digits.size() - 1; i >= 0; --i) {
    cout << digits[i];
  }
  cout << '\n';

  return 0;
}
