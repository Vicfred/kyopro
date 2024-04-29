// Vicfred
// https://atcoder.jp/contests/abc351/tasks/abc351_b
// implementaion
#include <iostream>
#include <string>
#include <vector>

using namespace std;

int main() {
  int N;
  cin >> N;
  vector<string> A(N), B(N);
  for(int i = 0; i < N; ++i) {
    cin >> A[i];
  }
  for(int i = 0; i < N; ++i) {
    cin >> B[i];
  }
  for(int i = 0; i < N; ++i) {
    for(int j = 0; j < N; ++j) {
      if(A[i][j] != B[i][j]) {
        cout << i + 1 << " " << j + 1 << endl;
        return 0;
      }
    }
  }
  return 0;
}
