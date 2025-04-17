// vicfred
// https://atcoder.jp/contests/abc395/tasks/abc395_a
// implementation
#include <iostream>

using namespace std;

int main() {
  int N;
  cin >> N;
  int A[1001];
  for (int i = 0; i < N; ++i) {
    cin >> A[i];
  }
  bool valid = true;
  for (int i = 0; i < N - 1; ++i) {
    if (A[i] >= A[i + 1]) {
      valid = false;
      break;
    }
  }
  if (valid) {
    cout << "Yes" << endl;
  } else {
    cout << "No" << endl;
  }
  return 0;
}
