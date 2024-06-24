// Vicfred
// https://atcoder.jp/contests/abc359/tasks/abc359_b
// brute force, implementation
#include <iostream>
#include <vector>

using namespace std;

int main() {
  int N;
  cin >> N;
  vector<int> A(2 * N);
  for (int i = 0; i < 2 * N; ++i) {
    cin >> A[i];
  }
  int answer = 0;
  for(int i = 1; i <= N; ++i) {
    for(int idx = 0; idx < 2 * N; ++idx) {
      if(A[idx] == i and A[idx + 2] == i) {
        answer += 1;
        break;
      }
    }
  }
  cout << answer << endl;
  return 0;
}
