// Vicfred
// https://atcoder.jp/contests/abc319/tasks/abc319_b
//
#include <iostream>
#include <set>

using namespace std;

int main() {
  int N;
  cin >> N;
  set<int> divisors;
  for (int i = 1; i <= 9; ++i) {
    if (N % i == 0) {
      divisors.insert(i);
    }
  }
  for (int i = 0; i <= N; ++i) {
    int found = 0;
    for (const int &j : divisors) {
      if (i % (N / j) == 0) {
        found = j;
        break;
      }
    }
    if (found) {
      cout << found;
    } else {
      cout << "-";
    }
  }
  cout << endl;
  return 0;
}
