// Vicfred
// https://atcoder.jp/contests/abc356/tasks/abc356_b
// implementation
#include <iostream>
#include <vector>

using namespace std;

int main() {
  int N, M;
  cin >> N >> M;
  vector<int> A(M);
  vector<vector<int>> X(N, vector<int>(M));
  for(int i = 0; i < M; ++i) {
    cin >> A[i];
  }
  for(int i = 0; i < N; ++i) {
    for(int j = 0; j < M; ++j) {
      cin >> X[i][j];
    }
  }
  vector<int> eat(M);
  for(int i = 0; i < N; ++i) {
    for(int j = 0; j < M; ++j) {
      eat[j] += X[i][j];
    }
  }
  for(int i = 0; i < M; ++i) {
    if(eat[i] < A[i]) {
      cout << "No" << endl;
      return 0;
    }
  }
  cout << "Yes" << endl;
  return 0;
}
