// vicfred
// https://atcoder.jp/contests/adt_all_20231121_1/tasks/abc257_d
// dynamic programming
/*
 * For this DP we sort the edges by cost and consider
 * the first k edges. We see what happens when we add
 * a new edge u->v to see if we can connect new vertices
 * using this edge.
*/
#include <algorithm>
#include <cstdint>
#include <iostream>
#include <vector>

using namespace std;

struct Edge {
  int64_t cost;
  int64_t from;
  int64_t to;
};

int main() {
  int64_t N;
  cin >> N;
  vector<int64_t> x(N);
  vector<int64_t> y(N);
  vector<int64_t> P(N);
  for (int64_t i = 0; i < N; ++i) {
    cin >> x[i] >> y[i] >> P[i];
  }
  vector<Edge> edges;
  for (int64_t i = 0; i < N; ++i) {
    for (int64_t j = 0; j < N; ++j) {
      if (i == j) {
        continue;
      }
      int64_t distance = abs(x[i] - x[j]) + abs(y[i] - y[j]);
      int64_t cost = (distance + P[i] - 1) / P[i];
      edges.push_back({cost, i, j});
    }
  }
  sort(edges.begin(), edges.end(),
       [](const Edge &a, const Edge &b) { return a.cost < b.cost; });
  vector<vector<char>> dp(N, vector<char>(N, false));
  for (int64_t s = 0; s < N; ++s) {
    dp[s][s] = true;
  }
  int64_t M = edges.size();
  for (int64_t k = 0; k < M; ++k) {
    int64_t u = edges[k].from;
    int64_t v = edges[k].to;
    vector<vector<char>> next = dp;
    for (int64_t g = 0; g < N; ++g) {
      for (int64_t s = 0; s < N; ++s) {
        next[g][s] = dp[g][s] || (dp[u][s] && dp[g][v]);
      }
    }
    dp.swap(next);
    for (int64_t s = 0; s < N; ++s) {
      bool can_reach_all = true;
      for (int64_t g = 0; g < N; ++g) {
        if (!dp[g][s]) {
          can_reach_all = false;
          break;
        }
      }
      if (can_reach_all) {
        cout << edges[k].cost << endl;
        return 0;
      }
    }
  }
  return 0;
}
