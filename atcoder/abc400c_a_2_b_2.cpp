// vicfred
// https://atcoder.jp/contests/abc400/tasks/abc400_c
// math
#include <iostream>
#include <cmath>

using namespace std;

int main() {
  long long n;
  cin >> n;
  cout << (long long)sqrtl(n/2) + (long long)sqrtl(n/4) << endl;
  return 0;
}
