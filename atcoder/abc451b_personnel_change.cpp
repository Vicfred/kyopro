// vicfred
// https://atcoder.jp/contests/abc451/tasks/abc451_b
// data structures
#include <cstdint>
#include <iostream>
#include <vector>

using namespace std;

int main() {
  int64_t N, M;
  cin >> N >> M;
  vector<int64_t> A(N), B(N);
  vector<int64_t> departments(M);
  for(int i = 0; i < N; ++i) {
    cin >> A[i] >> B[i];
    --departments[A[i] - 1];
    ++departments[B[i] - 1];
  }
  for(int i = 0; i < M; ++i) {
    cout << departments[i] << endl;
  }
  return 0;
}
