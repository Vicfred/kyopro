// https://codeforces.com/problemset/problem/893/C
// graphs, dfs
import std.algorithm;
import std.array;
import std.conv;
import std.stdio;

int[][] graph;
int[] visited;
long[] c;

long dfs(int u) {
    visited[u] = 1;
    long minima = c[u];
    for(int i = 0; i < graph[u].length; i++) {
        int v = graph[u][i];
        if(visited[v] == 0) {
            minima = min(minima,dfs(v));
        }
    }
    return minima;
}

void main() {
    int n, m;
    readf("%s %s\n", &n, &m);
    c = readln.split.map!(to!long).array;
    // TODO how to initialize this?
    visited = new int[n];
    foreach(_; 0..n) {
        int[] vertex;
        graph ~= vertex;
    }
    foreach(_; 0..m) {
        int x,y;
        readf("%s %s\n", &x, &y);
        x -= 1;
        y -= 1;
        graph[x] ~= y;
        graph[y] ~= x;
    }
    long[] cost;
    foreach(vertex; 0..n) {
        if(visited[vertex] == 0) {
            cost ~= dfs(vertex);
        }
    }
    long total;
    foreach(item; cost)
        total += item;
    total.writeln;
}

