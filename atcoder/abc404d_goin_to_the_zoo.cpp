// vicfred
// https://atcoder.jp/contests/abc404/tasks/abc404_d
// brute force, bitmask
#include <algorithm>
#include <cstdint>
#include <iostream>
#include <vector>

using namespace std;

int main() {
  int64_t N, M;
  cin >> N >> M;
  vector<int64_t> C(N);
  vector<int64_t> K(M);
  vector<vector<int64_t>> A(M);
  vector<vector<int64_t>> zoos(N, vector<int64_t>(M, 0));
  for (int i = 0; i < N; ++i) {
    cin >> C[i];
  }
  for (int i = 0; i < M; ++i) {
    cin >> K[i];
    for (int j = 0; j < K[i]; ++j) {
      int64_t zoo;
      cin >> zoo;
      A[i].push_back(zoo);
      zoos[zoo - 1][i] = 1;
    }
  }
  /*
  cout << "N: " << N << " M: " << M << endl;
  cout << "C: ";
  for (int i = 0; i < N; ++i) {
    cout << C[i] << " ";
  }
  cout << endl;
  cout << "K: ";
  for (int i = 0; i < M; ++i) {
    cout << K[i] << " ";
  }
  cout << endl;
  for (int i = 0; i < M; ++i) {
    for (int j = 0; j < K[i]; ++j) {
      cout << A[i][j] << " ";
    }
    cout << endl;
  }
  for (int i = 0; i < N; ++i) {
    cout << "Zoo[" << i + 1 << "]: ";
    for (int j = 0; j < M; ++j) {
      cout << zoos[i][j] << " ";
    }
    cout << endl;
  }
  */
  int64_t minima = INT64_MAX;
  for (int mask = 0; mask < (1 << (2 * N)); ++mask) {
    int64_t cost = 0;
    vector<int64_t> seen(M);
    for (int bit = (2 * N) - 1; bit >= 0; --bit) {
      if (mask & (1 << bit)) {
        cost += C[bit % N];
        for (int i = 0; i < M; ++i) {
          if (zoos[bit % N][i] == 1) {
            seen[i] += 1;
          }
        }
        // cout << "1";
      } else {
        // cout << "0";
      }
    }
    /*
    cout << endl;
    cout << "seen: ";
    for (int i = 0; i < M; ++i) {
      cout << seen[i] << " ";
    }
    cout << endl;
    cout << "cost: " << cost << endl;
    */
    bool valid = true;
    for (int i = 0; i < M; ++i) {
      if (seen[i] < 2) {
        valid = false;
        break;
      }
    }
    if (valid) {
      minima = min({minima, cost});
    }
  }
  cout << minima << endl;
  return 0;
}
