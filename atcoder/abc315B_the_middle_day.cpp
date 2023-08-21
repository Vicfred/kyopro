// Vicfred
// https://atcoder.jp/contests/abc315/tasks/abc315_b
// implementation
#include <iostream>
#include <numeric>
#include <vector>

using namespace std;

int main() {
  int M;
  cin >> M;
  vector<int> D(M);
  for (int i = 0; i < M; ++i) {
    cin >> D[i];
  }
  int middle = accumulate(begin(D), end(D), 0);
  middle += 1;
  middle /= 2;
  int month = 0;
  int day = 0;
  int cummulative = D[0];
  while (cummulative < middle) {
    month += 1;
    cummulative += D[month];
  }
  cummulative -= D[month];
  day = middle - cummulative;
  cout << month + 1 << " " << day << endl;
}
