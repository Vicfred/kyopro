// Vicfred
// https://atcoder.jp/contests/abc301/tasks/abc301_b
// implementation
#include <iostream>
#include <vector>

using namespace std;

int abs(int x) {
  if (x < 0) {
    return -x;
  }
  return x;
}

int main() {
  int n;
  cin >> n;
  vector<int> a(n);
  for (int i = 0; i < n; ++i) {
    cin >> a[i];
  }
  for (int i = 0; i < n - 1; ++i) {
    int x, y;
    x = a[i];
    y = a[i + 1];
    cout << x << " ";
    if (abs(x - y) > 1) {
      if (x < y) {
        while (x < y - 1) {
          cout << x + 1 << " ";
          x += 1;
        }
      } else {
        while (y < x - 1) {
          cout << x - 1 << " ";
          x -= 1;
        }
      }
    }
  }
  cout << a[n - 1] << endl;
}
