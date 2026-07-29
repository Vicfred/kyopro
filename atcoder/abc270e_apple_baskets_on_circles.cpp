// vicfred
// https://atcoder.jp/contests/adt_all_20231227_1/tasks/abc270_e
// binary search
#include <cstdint>
#include <iostream>
#include <vector>

using namespace std;

int main() {
  int64_t N, K;
  cin >> N >> K;

  vector<int64_t> A(N);
  for (int64_t i = 0; i < N; ++i) {
    cin >> A[i];
  }

  int64_t low = 0;
  int64_t high = K;

  while (high - low > 1) {
    int64_t middle = low + (high - low) / 2;
    int64_t eaten = 0;

    for (int64_t i = 0; i < N; ++i) {
      eaten += min(A[i], middle);
    }

    if (eaten < K) {
      low = middle;
    } else {
      high = middle;
    }
  }

  for (int64_t i = 0; i < N; ++i) {
    int64_t eaten = min(A[i], low);
    A[i] -= eaten;
    K -= eaten;
  }

  for (int64_t i = 0; i < N && K > 0; ++i) {
    if (A[i] > 0) {
      A[i] -= 1;
      K -= 1;
    }
  }

  for (int64_t i = 0; i < N; ++i) {
    if (i > 0) {
      cout << ' ';
    }
    cout << A[i];
  }
  cout << endl;

  return 0;
}
