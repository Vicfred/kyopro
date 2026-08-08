// vicfred
// https://atcoder.jp/contests/adt_hard_20241217_3/tasks/abc361_e
// dynamic programming, tree dp, tree diameter
#include <cstdint>
#include <iostream>
#include <vector>

using namespace std;

struct Edge {
  int64_t to;
  int64_t weight;
};

int main() {
  int64_t N;
  cin >> N;

  vector<vector<Edge>> graph(N);
  int64_t totalWeight = 0;

  for (int64_t i = 0; i < N - 1; ++i) {
    int64_t A, B, C;
    cin >> A >> B >> C;
    A -= 1;
    B -= 1;

    graph[A].push_back({B, C});
    graph[B].push_back({A, C});
    totalWeight += C;
  }

  // Root the tree at vertex 0
  // order contains vertices in parent-before-child order.
  vector<int64_t> parent(N, -1);
  vector<int64_t> order;
  vector<int64_t> stack;

  parent[0] = 0;
  stack.push_back(0);

  while (!stack.empty()) {
    int64_t u = stack.back();
    stack.pop_back();

    order.push_back(u);

    for (const Edge &edge : graph[u]) {
      int64_t v = edge.to;

      // Do not return through the edge leading to the parent.
      if (v == parent[u]) {
        continue;
      }

      parent[v] = u;
      stack.push_back(v);
    }
  }

  // down[u] is the longest path that starts at u
  // and moves only downward inside u's subtree.
  vector<int64_t> down(N);

  // subtreeDiameter[u] is the longest path whose two endpoints
  // are both inside the subtree rooted at u.
  vector<int64_t> subtreeDiameter(N);

  // Reverse order processes children before their parents,
  // which is the postorder required by the tree DP.
  for (int64_t i = N - 1; i >= 0; --i) {
    int64_t u = order[i];

    // The two longest downward branches starting at u.
    int64_t best1 = 0;
    int64_t best2 = 0;

    // The best diameter already contained entirely
    // inside one of u's child subtrees.
    int64_t bestChildDiameter = 0;

    for (const Edge &edge : graph[u]) {
      int64_t v = edge.to;

      // Only process children of u, not its parent.
      if (parent[v] != u) {
        continue;
      }

      bestChildDiameter = max(bestChildDiameter, subtreeDiameter[v]);

      // Go from u to v, then continue along v's best downward path.
      int64_t candidate = edge.weight + down[v];

      // Maintain the two largest downward candidates.
      if (candidate >= best1) {
        best2 = best1;
        best1 = candidate;
      } else if (candidate > best2) {
        best2 = candidate;
      }
    }

    // A downward path starting at u can use only one child branch.
    down[u] = best1;

    // The subtree diameter is either:
    // 1. entirely inside one child subtree, or
    // 2. a path passing through u using its two longest branches.
    subtreeDiameter[u] = max(bestChildDiameter, best1 + best2);
  }

  // Vertex 0 is the root, so its subtree is the entire tree.
  int64_t diameter = subtreeDiameter[0];

  // Every edge is normally traversed twice.
  // The edges on the diameter path only need to be traversed once.
  int64_t answer = 2 * totalWeight - diameter;

  cout << answer << endl;
  return 0;
}
