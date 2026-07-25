// vicfred
// https://atcoder.jp/contests/adt_medium_20240904_3/tasks/abc361_d
// bfs
#include <algorithm>
#include <iostream>
#include <map>
#include <queue>
#include <string>

using namespace std;

int main() {
  int64_t N;
  cin >> N;
  // cout << N << endl;
  string S, T;
  cin >> S;
  cin >> T;
  // cout << S << endl;
  // cout << T << endl;
  S = S + "..";
  T = T + "..";
  map<string, int> dist;
  queue<string> q;
  q.push(S);
  dist[S] = 0;
  // cout << "distance to " << S << ": 0" << endl;
  while (!q.empty()) {
    string u = q.front();
    q.pop();
    // cout << "processing " << u << endl;
    for (int i = 0; i < N + 1; ++i) {
      string v = u;
      if (u[i] == '.' or u[i + 1] == '.') {
        continue;
      }
      for (int j = 0; j < N + 1; ++j) {
        if (u[j] == '.' and u[j + 1] == '.') {
          // substitute
          swap_ranges(v.begin() + i, v.begin() + i + 2, v.begin() + j);
          if (dist.count(v) == 0) {
            // cout << "inserting " << v << endl;
            q.push(v);
            dist[v] = dist[u] + 1;
          }
        }
      }
    }
  }
  if (dist.count(T) != 0) {
    cout << dist[T] << endl;
  } else {
    cout << -1 << endl;
  }
  return 0;
}
