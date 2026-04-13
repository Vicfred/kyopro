// vicfred
// https://atcoder.jp/contests/abc452/tasks/abc452_a
// implementation
#include <cstdint>
#include <iostream>

using namespace std;

int main() {
  int64_t M, D;
  cin >> M >> D;
  if(M == 1 and D == 7 or
     M == 3 and D == 3 or
     M == 5 and D == 5 or
     M == 7 and D == 7 or
     M == 9 and D == 9) {
    cout << "Yes" << endl;
  }
  else {
    cout << "No" << endl;
  }
  return 0;
}
