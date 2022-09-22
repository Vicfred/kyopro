// Vicfred
// https://atcoder.jp/contests/abc261/tasks/abc261_a
// Implementation
#include <algorithm>
#include <iostream>

using namespace std;

int main() {
  int L1, R1, L2, R2;
  cin >> L1 >> R1 >> L2 >> R2;

  if(L1 > L2) {
    swap(L1,L2);
    swap(R1,R2);
  }

  if(L2 >= R1) {
    cout << 0 << endl;
    return 0;
  }

  cout << min(R1, R2) - L2 << endl;
  return 0;
}
