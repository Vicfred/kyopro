// Vicfred
// https://atcoder.jp/contests/abc325/tasks/abc325_b
// brute force
#include <algorithm>
#include <iostream>
#include <vector>

using namespace std;

int main() {
  long long N;
  cin >> N;
  vector<long long> W(N);
  vector<long long> X(N);
  for (int i = 0; i < N; ++i) {
    cin >> W[i] >> X[i];
  }
  long long maxima = 0;
  for (int hour = 0; hour < 24; ++hour) {
    long long employees = 0;
    for (int i = 0; i < N; ++i) {
      int meeting = (X[i] + hour) % 24;
      if (meeting >= 9 and meeting <= 17) {
        employees += W[i];
      }
    }
    maxima = max(maxima, employees);
  }
  cout << maxima << endl;
  return 0;
}
