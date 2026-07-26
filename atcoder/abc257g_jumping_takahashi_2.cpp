// vicfred
// https://atcoder.jp/contests/adt_all_20231121_1/tasks/abc257_d
// binary search, bfs
#include <cstdint>
#include <iostream>
#include <queue>
#include <vector>

using namespace std;

int main() {
  int64_t N;
  cin >> N;
  vector<int64_t> x(N);
  vector<int64_t> y(N);
  vector<int64_t> P(N);
  for (int i = 0; i < N; ++i) {
    cin >> x[i] >> y[i] >> P[i];
  }
  int64_t r = (1LL << 32);
  int64_t l = 0;
  while (l < r) {
    int64_t S = l + (r - l) / 2LL;
    // cout << "training: " << S << endl;
    vector<vector<int64_t>> E(N);
    // build a graph with with jumping ability
    for (int i = 0; i < N; ++i) {
      for (int j = 0; j < N; ++j) {
        if (P[i] * S >= abs(x[i] - x[j]) + abs(y[i] - y[j])) {
          E[i].push_back(j);
        }
      }
    }
    // check if we can reach all nodes
    bool found = false;
    for (int node = 0; node < N; ++node) {
      vector<int64_t> dist(N, -1);
      dist[node] = 0;
      queue<int64_t> q;
      q.push(node);
      while(!q.empty()) {
        int64_t u = q.front();
        q.pop();
        for(const int64_t& v : E[u]) {
          if(dist[v] != -1) {
            continue;
          }
          dist[v] = dist[u] + 1;
          q.push(v);
        }
      }
      bool all_connected = true;
      for(int i = 0; i < N; ++i) {
        if(dist[i] == -1) {
          all_connected = false;
        }
      }
      if(all_connected) {
        found = true;
        // cout << "can reach all nodes from node " << node + 1 << " with ability " << S << endl;
      }
    }
    if(found) {
      r = S;
    } else {
      l = S + 1;
    }
  }
  cout << l << endl;
  return 0;
}
