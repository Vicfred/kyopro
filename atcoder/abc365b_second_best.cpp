// Vicfred
// https://atcoder.jp/contests/abc365/tasks/abc365_b
// greedy, sorting
#include <algorithm>
#include <iostream>
#include <vector>

using namespace std;

int main() {
  int N;
  cin >> N;
  vector<long long> A(N);
  for (int i = 0; i < N; i++) {
    cin >> A[i];
  }
  vector<long long> B = A;
  sort(begin(A), end(A));
  for(int i = 0; i < N; i++) {
    if(B[i] == A[N - 2]) {
      cout << i + 1 << endl;
    }
  }
  return 0;
}
