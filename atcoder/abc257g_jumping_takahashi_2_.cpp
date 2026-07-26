// vicfred
// https://atcoder.jp/contests/adt_all_20231121_1/tasks/abc257_d
// floyd warshall
#include <cstdint>
#include <iostream>
#include <limits>
#include <vector>

using namespace std;

int main() {
  int64_t N;
  cin >> N;
  vector<int64_t> x(N);
  vector<int64_t> y(N);
  vector<int64_t> P(N);
  for (int64_t i = 0; i < N; ++i) {
    cin >> x[i] >> y[i] >> P[i];
  }
  vector<vector<int64_t>> dist(N, vector<int64_t>(N));
  for (int64_t i = 0; i < N; ++i) {
    for (int64_t j = 0; j < N; ++j) {
      int64_t distance = abs(x[i] - x[j]) + abs(y[i] - y[j]);
      dist[i][j] = (distance + P[i] - 1) / P[i];
    }
  }
  for (int64_t k = 0; k < N; ++k) {
    for (int64_t i = 0; i < N; ++i) {
      for (int64_t j = 0; j < N; ++j) {
        dist[i][j] = min(dist[i][j], max(dist[i][k], dist[k][j]));
      }
    }
  }
  int64_t answer = numeric_limits<int64_t>::max();
  for(int64_t i = 0; i < N; ++i) {
    int64_t required = 0;
    for(int64_t j = 0; j < N; ++j) {
      required = max(required, dist[i][j]);
    }
    answer = min(answer, required);
  }
  cout << answer << endl;
  return 0;
}
