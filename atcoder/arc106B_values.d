// vicfred
// https://atcoder.jp/contests/arc106/tasks/arc106_b
// bfs, dfs, graph
import std.algorithm;
import std.array;
import std.conv;
import std.stdio;
import std.string;

long[][] graph;
long[] visited;
long diff;

long[] a;
long[] b;

void dfs(long u) {
    visited[u] = 1;

    diff += a[u] - b[u];

    foreach(v; graph[u])
        if(visited[v] == 0)
            dfs(v);
}

void main() {
    long n, m;
    readf("%s %s\n", &n, &m);

    graph = new long[][](n + 1);
    visited = new long[n + 1];

    a = 0~readln.split.map!(to!long).array;
    b = 0~readln.split.map!(to!long).array;

    long c, d;
    foreach(_; 0..m) {
        readf("%s %s\n", &c, &d);
        graph[c] ~= d;
        graph[d] ~= c;
    }

    for(long u = 1; u <= n; u++) {
        if(visited[u] == 0) {
            diff = 0;
            dfs(u);
            if(diff != 0) {
                "No".writeln;
                return;
            }
        }
    }

    "Yes".writeln;
}

