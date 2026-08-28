// uninhm
// https://atcoder.jp/contests/abc427/tasks/abc427_b
// implementation

#include <iostream>

using namespace std;

int main() {
  int n;
  cin >> n;
  int a = 1;
  for (int i = 1; i < n; ++i) {
    int sum = 0;
    int num = a;
    while (num > 0) {
      sum += num%10;
      num /= 10;
    }
    a += sum;
  }
  cout << a << '\n';
}
