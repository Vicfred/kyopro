// vicfred
// https://atcoder.jp/contests/adt_all_20260713_1/tasks/abc237_e
// graphs, shortest paths, dijkstra, potential functions, johnson reweighting
#include <algorithm>
#include <cstdint>
#include <functional>
#include <iostream>
#include <limits>
#include <queue>
#include <utility>
#include <vector>

using namespace std;

int main() {
  int64_t N, M;
  cin >> N >> M;

  vector<int64_t> H(N);
  for (int64_t i = 0; i < N; ++i) {
    cin >> H[i];
  }

  vector<vector<pair<int64_t, int64_t>>> graph(N);

  for (int64_t i = 0; i < M; ++i) {
    int64_t u, v;
    cin >> u >> v;
    u -= 1;
    v -= 1;

    // this is the johnson reweighting
    int64_t costUV = max<int64_t>(0, H[v] - H[u]);
    int64_t costVU = max<int64_t>(0, H[u] - H[v]);

    graph[u].push_back({v, costUV});
    graph[v].push_back({u, costVU});
  }

  int64_t infinity = numeric_limits<int64_t>::max() / 4;
  vector<int64_t> distance(N, infinity);
  priority_queue<pair<int64_t, int64_t>, vector<pair<int64_t, int64_t>>,
                 greater<pair<int64_t, int64_t>>>
      pq;
  distance[0] = 0;
  pq.push({0, 0});

  while (!pq.empty()) {
    auto [currentDistance, u] = pq.top();
    pq.pop();

    if (currentDistance != distance[u]) {
      continue;
    }

    for (auto [v, cost] : graph[u]) {
      int64_t newDistance = currentDistance + cost;

      if (newDistance < distance[v]) {
        distance[v] = newDistance;
        pq.push({newDistance, v});
      }
    }
  }

  int64_t answer = 0;

  for(int64_t v = 0; v < N; ++v) {
    // This comes from johnson reweighting
    // after adjusting to the normal distances.
    int64_t happiness = H[0] - H[v] - distance[v];
    answer = max(answer, happiness);
  }

  cout << answer << endl;
  return 0;
}
