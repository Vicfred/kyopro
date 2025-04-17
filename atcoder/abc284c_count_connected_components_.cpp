// vicfred
// https://atcoder.jp/contests/abc284/tasks/abc284_c
// connected components, dfs
#include <cstdint>
#include <iostream>
#include <vector>

using namespace std;

void dfs(int vertex, const vector<vector<int64_t>> &graph, vector<int64_t> &visited) {
  visited[vertex] = 1;
  // cout << "visited " << vertex + 1 << endl;
  for(const auto& neighbor : graph[vertex]) {
    if(visited[neighbor] == 1) {
      continue;
    }
    // cout << "visiting " << neighbor + 1 << endl;
    dfs(neighbor, graph, visited);
  }
}

int main() {
  int64_t N, M;
  cin >> N >> M;
  vector<vector<int64_t>> graph(N);
  vector<int64_t> visited(N);
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
    if(visited[i] == 0) {
      connected_componentes += 1;
      dfs(i, graph, visited);
    }
  }
  cout << connected_componentes << endl;
  return 0;
}
