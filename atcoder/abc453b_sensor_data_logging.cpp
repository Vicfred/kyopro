// Vicfred
// https://atcoder.jp/contests/abc453/tasks/abc453_b
// implementation
#include <iostream>
#include <vector>

using namespace std;

int main() {
  int T, X;
  cin >> T >> X;
  T += 1;
  vector<int> A(T);
  for(int i = 0; i < T; ++i) {
    cin >> A[i];
  }
  int saved = A[0];
  cout << 0 << " " << A[0] << endl;
  for(int  i = 1; i < T; ++i) {
    if(abs(A[i] - saved) >= X) {
      saved = A[i];
      cout << i << " " << A[i] << endl;
    }
  }
  return 0;
}
