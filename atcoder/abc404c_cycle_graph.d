// uninhm
// https://atcoder.jp/contests/abc404/tasks/abc404_c
// graph, dfs

import std.stdio;

void main() {
  int n, m;
  "%d %d\n".readf(&n, &m);
  if (n != m) {
    "No".writeln;
    return;
  }
  int[] degree = new int[](n);
  int[][] edges = new int[][](n);
  while (m--) {
    int a, b;
    "%d %d\n".readf(&a, &b);
    --a; --b;
    degree[a]++;
    degree[b]++;
    if (degree[a] > 2 || degree[b] > 2) {
      "No".writeln;
      return;
    }
    edges[a] ~= [b];
    edges[b] ~= [a];
  }
  bool[] visited = new bool[](n);
  int node = 0;
  int total_visited = 0;
  while (!visited[node]) {
    visited[node] = true;
    total_visited++;
    foreach (int x; edges[node])
      if (!visited[x])
        node = x;
  }
  if (total_visited == n)
    "Yes".writeln;
  else
    "No".writeln;
}
