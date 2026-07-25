// vicfred
// https://atcoder.jp/contests/adt_all_20231122_2/tasks/abc254_e
// bfs
#include <cstdint>
#include <iostream>
#include <queue>
#include <vector>

using namespace std;

int main() {
  int64_t N, M;
  cin >> N >> M;
  vector<vector<int64_t>> E(N);
  for(int i = 0; i < M; ++i) {
    int64_t a, b;
    cin >> a >> b;
    a -= 1;
    b -= 1;
    E[a].push_back(b);
    E[b].push_back(a);
  }
  int64_t Q;
  cin >> Q;
  for(int i = 0; i < Q; ++i) {
    int64_t x, k;
    cin >> x >> k;
    x -= 1;
    vector<int64_t> dist(N, -1);
    queue<int64_t> q;
    q.push(x);
    dist[x] = 0;
    int64_t count = 0;
    count += x+1;
    while(!q.empty()) {
      int64_t u = q.front();
      q.pop();
      // cout << "processing " << u + 1 << endl;
      if(dist[u] == k) {
        continue;
      }
      for(const auto& v : E[u]) {
        if(dist[v] != -1) {
          continue;
        }
        dist[v] = dist[u] + 1;
        q.push(v);
        count += v+1;
      }
    }
    cout << count << endl;
  }
  return 0;
}
