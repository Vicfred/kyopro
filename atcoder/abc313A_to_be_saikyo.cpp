// vicfred
// https://atcoder.jp/contests/abc313/tasks/abc313_a
// implementation
#include <iostream>
#include <vector>

using namespace std;

int main() {
  int N;
  cin >> N;
  vector<int> P(N);
  for(int i = 0; i < N; ++i) {
    cin >> P[i];
  }
  int maxima = 0;
  int strongest = 0;
  for(int i = 1; i < N; ++i) {
    maxima = max(maxima, P[i] - P[0]);
    strongest = max(strongest, P[i]);
  }
  if(maxima > 0 || strongest == P[0]) {
    maxima = maxima + 1;
  }
  cout << maxima << endl;
  return 0;
}
