// vicfred
// https://atcoder.jp/contests/adt_all_20231227_1/tasks/abc270_e
// sorting, water filling
#include <algorithm>
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

  vector<int64_t> sortedA = A;
  sort(sortedA.begin(), sortedA.end());

  int64_t remaining = K;
  int64_t level = 0;
  int64_t position = 0;

  while (position < N && remaining > 0) {
    int64_t nextLevel = sortedA[position];
    int64_t active = N - position;
    int64_t cost = (nextLevel - level) * active;

    if (cost <= remaining) {
      remaining -= cost;
      level = nextLevel;

      while (position < N && sortedA[position] == nextLevel) {
        position += 1;
      }
    } else {
      level += remaining / active;
      remaining %= active;
      break;
    }
  }

  for (int64_t i = 0; i < N; ++i) {
    A[i] = max<int64_t>(A[i] - level, 0);
  }

  for (int64_t i = 0; i < N && remaining > 0; ++i) {
    if (A[i] > 0) {
      A[i] -= 1;
      remaining -= 1;
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
