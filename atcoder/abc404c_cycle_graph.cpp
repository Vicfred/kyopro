// vicfred
// https://atcoder.jp/contests/abc404/tasks/abc404_c
// graph, bfs, dfs, dsu
#include <algorithm>
#include <cassert>
#include <iostream>
#include <vector>

using namespace std;

struct dsu {
public:
  dsu() : _n(0) {}
  explicit dsu(int n) : _n(n), parent_or_size(n, -1) {}

  int merge(int a, int b) {
    assert(0 <= a && a < _n);
    assert(0 <= b && b < _n);
    int x = leader(a), y = leader(b);
    if (x == y)
      return x;
    if (-parent_or_size[x] < -parent_or_size[y])
      std::swap(x, y);
    parent_or_size[x] += parent_or_size[y];
    parent_or_size[y] = x;
    return x;
  }

  bool same(int a, int b) {
    assert(0 <= a && a < _n);
    assert(0 <= b && b < _n);
    return leader(a) == leader(b);
  }

  int leader(int a) {
    assert(0 <= a && a < _n);
    return _leader(a);
  }

  int size(int a) {
    assert(0 <= a && a < _n);
    return -parent_or_size[leader(a)];
  }

  std::vector<std::vector<int>> groups() {
    std::vector<int> leader_buf(_n), group_size(_n);
    for (int i = 0; i < _n; i++) {
      leader_buf[i] = leader(i);
      group_size[leader_buf[i]]++;
    }
    std::vector<std::vector<int>> result(_n);
    for (int i = 0; i < _n; i++) {
      result[i].reserve(group_size[i]);
    }
    for (int i = 0; i < _n; i++) {
      result[leader_buf[i]].push_back(i);
    }
    result.erase(
        std::remove_if(result.begin(), result.end(),
                       [&](const std::vector<int> &v) { return v.empty(); }),
        result.end());
    return result;
  }

private:
  int _n;
  // root node: -1 * component size
  // otherwise: parent
  std::vector<int> parent_or_size;

  int _leader(int a) {
    if (parent_or_size[a] < 0)
      return a;
    return parent_or_size[a] = _leader(parent_or_size[a]);
  }
};

int main() {
  const int max_n = 2 * 1e5 + 1;
  int n, m;
  cin >> n >> m;
  vector<int> a(m), b(m);
  vector<int> degree(max_n);
  dsu uf(n);
  for (int i = 0; i < m; ++i) {
    cin >> a[i] >> b[i];
    degree[a[i]] += 1;
    degree[b[i]] += 1;
    uf.merge(a[i] - 1, b[i] - 1);
  }
  if (n != m) {
    cout << "No" << endl;
    return 0;
  }
  bool valid = true;
  for (int i = 1; i <= n; ++i) {
    if(degree[i] != 2) {
      valid = false;
      break;
    }
  }
  if(!valid) {
    cout << "No" << endl;
    return 0;
  }
  if(uf.size(0) != n) {
    cout << "No" << endl;
    return 0;
  }
  cout << "Yes" << endl;
  return 0;
}
