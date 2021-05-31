// Vicfred
// https://codeforces.com/contest/1422/problem/D
// dijkstra, priority queue
#include <algorithm>
#include <iostream>
#include <numeric>
#include <queue>
#include <vector>
#include <utility>

using namespace std;

int main() {
    long long n, m;
    cin >> n >> m;

    long long sx, sy, fx, fy;
    cin >> sx >> sy >> fx >> fy;

    vector<vector<pair<long long, long long>>> graph(m + 2);
    graph[m].push_back({m + 1, abs(fx - sx) + abs(fy - sy)});

    vector<long long> x(m), y(m);
    for(long long i = 0; i < m; i++) {
        cin >> x[i] >> y[i];
        graph[m].push_back({i, min(abs(sx - x[i]), abs(sy - y[i]))});
        graph[i].push_back({m + 1, abs(fx - x[i]) + abs(fy - y[i])});
    }

    vector<long long> ordered(m);
    iota(begin(ordered), end(ordered), 0);

    for(long long i = 0; i < 2; i++) {
        sort(begin(ordered), end(ordered),
                [&](long long u, long long v) {return x[u] < x[v]; });
        for(long long j = 0; j <  m - 1; j++) {
            long long a = ordered[j];
            long long b = ordered[j + 1];
            graph[a].push_back({b, x[b] - x[a]});
            graph[b].push_back({a, x[b] - x[a]});
        }
        swap(x, y);
    }

    priority_queue<pair<long long, long long>> q;
    vector<long long> dist(m + 2, 1LL<<60);
    dist[m] = 0;
    q.emplace(0, m);

    while(!q.empty()) {
        auto item = q.top();
        q.pop();

        long long u = -item.first;
        long long v = item.second;

        if(dist[v] != u)
            continue;

        for(auto cell: graph[v]) {
            long long to = cell.first;
            long long cost = cell.second;

            if(dist[v] + cost < dist[to]) {
                dist[to] = dist[v] + cost;
                q.emplace(-dist[to], to);
            }
        }
    }

    cout << dist[m + 1] << endl;

    return 0;
}

