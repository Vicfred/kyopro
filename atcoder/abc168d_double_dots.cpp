// vicfred
// https://atcoder.jp/contests/abc168/tasks/abc168_d
// bfs
#include <cstdint>
#include <iostream>
#include <queue>
#include <vector>

using namespace std;

int main() {
  int64_t N, M;
  cin >> N >> M;

  vector<vector<int64_t>> graph(N);

  for (int64_t i = 0; i < M; ++i) {
    int64_t A, B;
    cin >> A >> B;
    
    A -= 1;
    B -= 1;

    graph[A].push_back(B);
    graph[B].push_back(A);
  }

  // parent[v] is the room that room v should point to.
  //
  // -1 means that we have not visited the room yet.
  vector<int64_t> parent(N, -1);

  queue<int64_t> q;

  // Start BFS from room 1.
  parent[0] = 0;
  q.push(0);

  while (!q.empty()) {
    int64_t u = q.front();
    q.pop();

    for (int64_t v : graph[u]) {
      // We have already discovered this room.
      if (parent[v] != -1) {
        continue;
      }

      // BFS discovered v from u.
      //
      // Since BFS explores vertices in increasing distance
      // from room 1, u is exactly one step closet to room 1
      // than v.
      //
      // Therefore the signpost in v can point to u.
      parent[v] = u;

      q.push(v);
    }
  }

  // The graph is guaranteed to be connected,
  // so every room was reached by BFS.
  cout << "Yes" << endl;

  for (int64_t v = 1; v < N; ++v) {
    // Convert back from 0-indexed to 1-indexed room numbers.
    cout << parent[v] + 1 << endl;
  }

  return 0;
}
