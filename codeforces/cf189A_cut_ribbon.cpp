// vicfred
// https://codeforces.com/problemset/problem/189/A
// brute force
#include <algorithm>
#include <cstdint>
#include <iostream>

using namespace std;

int main() {
  int64_t n, a, b, c;
  cin >> n >> a >> b >> c;

  int64_t maxima = -1;
  for (int64_t x = 0; x <= n / a; ++x) {
    for (int64_t y = 0; y <= n / b; ++y) {
      int64_t z = n - x*a - y*b;
      if (z >= 0 && z % c == 0) {
        maxima = max(maxima, x + y + z/c);
      }
    }
  }

  cout << maxima << endl;

  return 0;
}
