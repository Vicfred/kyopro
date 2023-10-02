// Vicfred
// https://atcoder.jp/contests/abc322/tasks/abc322_c
// binary search
#include <iostream>
#include <vector>

using namespace std;

int main() {
  int N, M;
  cin >> N >> M;
  vector<int> A(M);
  for (int i = 0; i < M; ++i) {
    cin >> A[i];
  }
  for (int idx = 1; idx <= N; ++idx) {
    int ini = 0;
    int fin = M - 1;
    int mid = ini / 2 + fin / 2;
    // cout << "searching " << idx << endl;
    while (ini < fin) {
      mid = (ini + fin) / 2;
      // cout << "testing " << A[mid] << " at index " << mid << endl;
      if (idx <= A[mid]) {
        fin = mid;
      } else {
        ini = mid + 1;
      }
    }
    cout << A[fin] - idx << endl;
  }
  return 0;
}
