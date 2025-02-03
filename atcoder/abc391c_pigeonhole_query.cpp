// Vicfred
// https://atcoder.jp/contests/abc391/tasks/abc391_c
// data structures
#include <iostream>
#include <vector>

using namespace std;

int main() {
  int N, Q;
  cin >> N >> Q;
  vector<int> pigeons(N + 1);
  for (int i = 0; i < N + 1; ++i) {
    pigeons[i] = i;
  }
  vector<int> nests(N + 1, 1);
  int collisions = 0;
  for (int i = 0; i < Q; ++i) {
    int C;
    cin >> C;
    if (C == 1) {
      int P, H;
      cin >> P >> H;
      // cout << "moving pigeon " << P << " from " << pigeons[P] << " to " << H
      // << endl;
      nests[pigeons[P]] -= 1;
      if (nests[pigeons[P]] == 1) {
        // cout << "decreased collisions" << endl;
        collisions -= 1;
      }
      pigeons[P] = H;
      nests[H] += 1;
      if (nests[H] == 2) {
        // cout << "increased collisions at " << H << endl;
        collisions += 1;
      }
    } else {
      cout << collisions << endl;
    }
  }
  return 0;
}
