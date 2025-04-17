// vicfred
// https://atcoder.jp/contests/abc325/tasks/abc325_c
// Data structures
// TLE
#include <iostream>
#include <map>
#include <string>
#include <utility>
#include <vector>

using namespace std;

class UnionFind { // OOP style
private:
  map<pair<int, int>, pair<int, int>> p; // vi p is the key part
  map<pair<int, int>, int> setSize;
  int numSets;

public:
  UnionFind(const vector<string> &grid) {
    int N = grid.size();
    int M = grid[0].size();
    int sensors = 0;
    for (int i = 0; i < N; ++i) {
      for (int j = 0; j < M; ++j) {
        if (grid[i][j] == '#') {
          p[{i, j}] = {i, j};
          setSize[{i, j}] = 1;
          sensors += 1;
        }
      }
    }
    numSets = sensors; // optional feature
  }

  pair<int, int> findSet(pair<int, int> i) {
    return (p[i] == i) ? i : (p[i] = findSet(p[i]));
  }
  bool isSameSet(pair<int, int> i, pair<int, int> j) {
    return findSet(i) == findSet(j);
  }

  int numDisjointSets() { return numSets; }                       // optional
  int sizeOfSet(pair<int, int> i) { return setSize[findSet(i)]; } // optional

  void unionSet(pair<int, int> i, pair<int, int> j) {
    if (isSameSet(i, j))
      return;                                      // i and j are in same set
    pair<int, int> x = findSet(i), y = findSet(j); // find both rep items
    p[x] = y;                                      // set x under y
    setSize[y] += setSize[x];                      // combine set sizes at y
    --numSets;                                     // a union reduces numSets
  }
};

int main() {
  const int dx[8] = {1, 0, -1, 0, 1, 1, -1, -1},
            dy[8] = {0, 1, 0, -1, -1, 1, -1, 1};
  int H, W;
  cin >> H >> W;
  vector<string> grid(H);
  for (int i = 0; i < H; ++i) {
    cin >> grid[i];
  }
  UnionFind UF(grid);
  for (int i = 0; i < H; ++i) {
    for (int j = 0; j < W; ++j) {
      pair<int, int> point = {i, j};
      for (int x = 0; x < 8; ++x) {
        int newX = i + dx[x];
        int newY = j + dy[x];
        if (newX >= 0 and newY >= 0 and newX < H and newY < W) {
          if (grid[i][j] == '#' and grid[newX][newY] == '#') {
            UF.unionSet({i, j}, {newX, newY});
            // cout << i << "," << j << " : " << UF.numDisjointSets() << endl;
          }
        }
      }
    }
  }
  cout << UF.numDisjointSets() << endl;
  return 0;
}
