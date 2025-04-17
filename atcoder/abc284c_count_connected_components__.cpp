// vicfred
// https://atcoder.jp/contests/abc284/tasks/abc284_c
// connected components, dfs
#include <cstdint>
#include <iostream>
#include <queue>
#include <vector>

using namespace std;

int main() {
  int64_t N, M;
  cin >> N >> M;
  vector<vector<int64_t>> graph(N);
  vector<int64_t> distance(N, -1);
  for (int i = 0; i < M; ++i) {
    int u, v;
    cin >> u >> v;
    u -= 1;
    v -= 1;
    graph[u].push_back(v);
    graph[v].push_back(u);
  }
  /*
  for(int i = 0; i < N; ++i) {
    cout << "neighbors of " << i + 1 << " ";
    for(const auto neighbor : graph[i]) {
      cout << neighbor + 1 << " ";
    } cout << endl;
  }
  */
  int connected_componentes = 0;
  for(int i = 0; i < N; ++i) {
    if(distance[i] != -1) {
      continue;
    }
    connected_componentes += 1;
    queue<int> q;
    distance[i] = 0;
    q.push(i);
    while(!q.empty()) {
      int u = q.front();
      q.pop();
      for(const int& neighbor : graph[u]) {
        if(distance[neighbor] != -1) {
          continue;
        }
        distance[neighbor] = distance[u] + 1;
        q.push(neighbor);
      }
    }
  }
  cout << connected_componentes << endl;
  return 0;
}
