// Vicfred
// https://atcoder.jp/contests/abc326/tasks/abc326_b
// brute force
#include <iostream>

using namespace std;

int main() {
  int N;
  cin >> N;
  for (int a = 1; a <= 9; ++a) {
    for (int b = 0; b <= 9; ++b) {
      for (int c = 0; c <= 9; ++c) {
        if (a * b == c and a * 100 + b * 10 + c >= N) {
          cout << a * 100 + b * 10 + c << endl;
          return 0;
        }
      }
    }
  }
  return 0;
}
