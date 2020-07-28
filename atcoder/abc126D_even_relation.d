// Vicfred
// https://atcoder.jp/contests/abc126/tasks/abc126_d
// dfs, graph, tree
import std.algorithm;
import std.array;
import std.conv;
import std.stdio;
import std.string;

const uint MAXN = 10^^5 + 5;

struct edge {
    long u;
    long w;
}

edge[][MAXN] tree;
long[MAXN] dist;

void dfs(long child, long parent, long distance) {
    dist[child] = dist[parent] + distance;

    foreach(item; tree[child]) {
        if(item.u == parent) continue;
        dfs(item.u, child, item.w);
    }
}

void main() {
    const long n = readln.chomp.to!long;

    foreach(i; 1..n) {
        long u, v, w;
        readf("%d %d %d\n", &u, &v, &w);
        tree[u] ~= edge(v, w);
        tree[v] ~= edge(u, w);
    }

    dfs(1, 0, 0);

    for(int i = 1; i <= n; i++) {
        if(dist[i]%2 == 0)
            1.writeln;
        else
            0.writeln;
    }
}

