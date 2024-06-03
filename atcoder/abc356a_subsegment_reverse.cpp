// Vicfred
// https://atcoder.jp/contests/abc356/tasks/abc356_a
// implementation
#include <iostream>
#include <vector>

using namespace std;

int main() {
  int N, L, R;
  cin >> N >> L >> R;
  vector<int> A(N);
  for(int i = 1;i <= L - 1; ++i) {
    cout << i << " ";
  }
  for(int i = R; i >= L; --i) {
    cout << i << " ";
  }
  for(int i = R + 1; i <= N; ++i) {
    cout << i << " ";
  }
  cout << endl;
  return 0;
}
