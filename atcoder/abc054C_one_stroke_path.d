// Vicfred
// https://atcoder.jp/contests/abc054/tasks/abc054_c
// dfs
import std.stdio;

int[][] graph;
bool[] visited;
int ans;

void dfs(int current) {
    bool flag = true;
    for(int i = 1; i <= visited.length - 1; i++) {
        if(!visited[i] && i != current)
            flag = false;
    }

    if(flag) {
        ans += 1;
        return;
    }

    visited[current] = true;

    foreach(neighbor; graph[current]) {
        if(!visited[neighbor])
            dfs(neighbor);
    }

    visited[current] = false;
}

void main() {
    int n, m;
    readf("%s %s\n", &n, &m);

    graph = new int[][](n + 1);
    visited = new bool[n + 1];
    ans = 0;

    foreach(_; 0..m) {
        int a, b;
        readf("%s %s\n", &a, &b);
        graph[a] ~= b;
        graph[b] ~= a;
    }

    dfs(1);

    ans.writeln;
}

