// vicfred
// https://atcoder.jp/contests/abc404/tasks/abc404_c
// graph, bfs, dfs, dsu
#include <cassert>
#include <iostream>
#include <queue>
#include <vector>

using namespace std;

int main() {
  const int max_n = 2 * 1e5 + 1;
  int n, m;
  cin >> n >> m;
  vector<int> a(m), b(m);
  vector<int> degree(max_n);
  vector<vector<int>> adj(n);
  for (int i = 0; i < m; ++i) {
    cin >> a[i] >> b[i];
    a[i] -= 1;
    b[i] -= 1;
    degree[a[i]] += 1;
    degree[b[i]] += 1;
    adj[a[i]].push_back(b[i]);
    adj[b[i]].push_back(a[i]);
  }
  if (n != m) {
    cout << "No" << endl;
    return 0;
  }
  bool valid = true;
  for (int i = 0; i < n; ++i) {
    if(degree[i] != 2) {
      valid = false;
      break;
    }
  }
  queue<int> q;
  vector<int> dist(n, -1);
  q.push(0);
  dist[0] = 0;
  while(!q.empty()) {
    int v = q.front();
    q.pop();
    for(const auto& w : adj[v]) {
      if(dist[w] != -1) {
        continue;
      }
      dist[w] = dist[v] + 1;
      q.push(w);
    }
  }
  for(int i = 0; i < n; ++i) {
    if(dist[i] == -1) {
      valid = false;
    }
  }
  if(!valid) {
    cout << "No" << endl;
    return 0;
  }
  cout << "Yes" << endl;
  return 0;
}
