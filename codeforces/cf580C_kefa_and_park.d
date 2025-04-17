// vicfred
// https://codeforces.com/problemset/problem/580/C
// dfs
import std.algorithm;
import std.array;
import std.conv;
import std.stdio;
import std.string;

int n, m, answer;
int[][] tree = new int[][](10^^5+5);
int[] a;

void dfs(int x, int parent, int cats, bool flag) {
    if(a[x] == 1)
        cats += 1;
    if(cats > m)
        flag = true;
    if(tree[x].length == 1 && x != 1 && !flag)
        answer += 1;
    foreach(item; tree[x])
        if(item != parent)
            dfs(item, x, cats*a[x], flag);
}

void main() {
    readf("%s %s", &n, &m);
    readln;
    a = 0~readln.split.map!(to!int).array;

    foreach(i; 1..n) {
        int x, y;
        readf("%s %s", &x, &y);
        readln;
        tree[x] ~= y;
        tree[y] ~= x;
    }

    dfs(1, 0, 0, 0);
    answer.writeln;
}

