// vicfred
// https://atcoder.jp/contests/abc265/tasks/abc265_b
// implementation
#include <iostream>
#include <vector>

using namespace std;

int main() {
  long long N, M, T;
  cin >> N >> M >> T;
  vector<int> A(N + 1);
  for (int i = 1; i <= N - 1; ++i) {
    cin >> A[i];
  }
  for (int i = 0; i < M; ++i) {
    int X, Y;
    cin >> X >> Y;
    A[X] -= Y;
  }
  bool valid = true;
  for (int i = 1; i <= N - 1; ++i) {
    T -= A[i];
    if (T <= 0) {
      valid = false;
    }
  }
  if (valid) {
    cout << "Yes" << endl;
  } else {
    cout << "No" << endl;
  }
  return 0;
}
