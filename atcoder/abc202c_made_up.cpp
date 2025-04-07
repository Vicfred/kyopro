// vicfred
// https://atcoder.jp/contests/abc202/tasks/abc202_c
// implementation
#include <iostream>
#include <vector>

using namespace std;

int main() {
  int N;
  cin >> N;
  vector<long long> A(N), B(N), C(N);
  vector<int> pos_a(10e5+1);
  for(int i = 0; i < N; ++i) {
    cin >> A[i];
    pos_a[A[i]] += 1;
  }
  for(int i = 0; i < N; ++i) {
    cin >> B[i];
  }
  for(int i = 0; i < N; ++i) {
    cin >> C[i];
    C[i] -= 1;
  }
  long long ans = 0LL;
  for(int i = 0; i < N; ++i) {
    ans += pos_a[B[C[i]]];
  }
  cout << ans << endl;
  return 0;
}
