// Vicfred
// https://atcoder.jp/contests/abc324/tasks/abc324_a
// implementation
#include <iostream>
#include <vector>

using namespace std;

int main() {
  int N;
  cin >> N;
  vector<int> A(N);
  for(int i = 0; i < N; ++i) {
    cin >> A[i];
  }
  int same = A[0];
  for(int i = 1; i < N; ++i) {
    if(A[i] != same) {
      cout << "No" << endl;
      return 0;
    }
  }
  cout << "Yes" << endl;
  return 0;
}
