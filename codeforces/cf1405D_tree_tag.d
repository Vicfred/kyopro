// vicfred
// https://codeforces.com/contest/1405/problem/D
// dfs, graph, bfs, tree
import std.algorithm;
import std.array;
import std.conv;
import std.stdio;
import std.string;

int n, a, b, da, db;
int[][] tree;

int[] depth;
int diameter;

int dfs(int x, int p) {
    int len = 0;

    foreach(child; tree[x]) {
        if(child != p) {
            depth[child] = depth[x] + 1;
            int cur = 1 + dfs(child, x);
            diameter = max(diameter, cur + len);
            len = max(len, cur);
        }
    }

    return len;
}

void main() {
    int t = readln.chomp.to!int;

    while(t--) {
        readf("%s %s %s %s %s", &n, &a, &b, &da, &db);
        readln;

        tree = new int[][](n+1);
        depth = new int[n+1];
        diameter = 0;

        foreach(_; 1..n) {
            int u, v;
            readf("%s %s", &u, &v);
            readln;
            tree[u] ~= v;
            tree[v] ~= u;
        }

        depth[a] = 0;
        dfs(a, -1);

        if(2 * da >= min(diameter, db) || depth[b] <= da)
            "Alice".writeln;
        else
            "Bob".writeln;
    }
}

