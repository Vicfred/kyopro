// vicfred
// https://atcoder.jp/contests/abc157/tasks/abc157_d
// graphs, disjoin set union, union find
#include <cstdint>
#include <iostream>
#include <utility>
#include <vector>

using namespace std;

class DisjointSetUnion {
private:
  vector<int64_t> parent;
  vector<int64_t> componentSize;

public:
  DisjointSetUnion(int64_t n) : parent(n), componentSize(n, 1) {
    for (int64_t i = 0; i < n; ++i) {
      parent[i] = i;
    }
  }

  int64_t find(int64_t x) {
    if (parent[x] == x) {
      return x;
    }

    parent[x] = find(parent[x]);
    return parent[x];
  }

  void unite(int64_t a, int64_t b) {
    a = find(a);
    b = find(b);

    if (a == b) {
      return;
    }

    if (componentSize[a] < componentSize[b]) {
      swap(a, b);
    }

    parent[b] = a;
    componentSize[a] += componentSize[b];
  }

  int64_t size(int64_t x) { return componentSize[find(x)]; }
};

int main() {
  int64_t N, M, K;
  cin >> N >> M >> K;

  DisjointSetUnion dsu(N);
  vector<int64_t> friendCount(N);

  for (int64_t i = 0; i < M; ++i) {
    int64_t A, B;
    cin >> A >> B;
    A -= 1;
    B -= 1;

    dsu.unite(A, B);
    friendCount[A] += 1;
    friendCount[B] += 1;
  }

  vector<int64_t> answer(N);

  for (int64_t i = 0; i < N; ++i) {
    answer[i] = dsu.size(i) - 1 - friendCount[i];
  }

  for (int64_t i = 0; i < K; ++i) {
    int64_t C, D;
    cin >> C >> D;
    C -= 1;
    D -= 1;

    if (dsu.find(C) == dsu.find(D)) {
      answer[C] -= 1;
      answer[D] -= 1;
    }
  }

  for (int64_t i = 0; i < N; ++i) {
    if (i > 0) {
      cout << " ";
    }

    cout << answer[i];
  }

  cout << endl;
  return 0;
}
