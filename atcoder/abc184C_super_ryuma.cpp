// Solution by(* vicfred, implementation by uninhm
// https://atcoder.jp/contests/abc184/tasks/abc184_c
// greedy

#include<iostream>
#include<math.h>

using namespace std;

int main() {
  long r1, c1, r2, c2;
  cin >> r1 >> c1 >> r2 >> c2;

  if(r1 == r2 && c1 == c2) {
    cout << 0 << endl;
    return 0;
  }

  if(r1 + c1 == r2 + c2 ||
     r1 - c1 == r2 - c2 ||
     abs(r1 - r2) + abs(c1 - c2) <= 3) {
    cout << 1 << endl;
    return 0;
  }

  if((r1 + c1) %2 == (r2 + c2)%2) {
    cout << 2 << endl;
    return 0;
  }

  for(int i = -3; i <= 3; i++) {
    for(int j = -3; j <= 3; j++) {
      long x = r1 + i;
      long y = c1 + j;

      if(x + y == r2 + c2 ||
          x - y == r2 - c2 ||
          abs(x - r2) + abs(y - c2) <= 3) {
        cout << 2 << endl;
        return 0;
      }
    }
  }

  cout << 3 << endl;
}
