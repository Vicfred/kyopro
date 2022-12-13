// vicfred
// https://adventofcode.com/2022/day/12
// graph, bfs, dfs
#include <fstream>
#include <iostream>
#include <map>
#include <queue>
#include <string>
#include <utility>
#include <vector>

using namespace std;

typedef pair<int, int> node;

int main() {
  int dx[4] = {-1, 1, 0, 0};
  int dy[4] = {0, 0, -1, 1};
  vector<string> grid;
  ifstream input("input.txt");
  pair<int, int> S, E;
  vector<node> candidates;
  int n, m;
  n = 0;
  for (string line; getline(input, line);) {
    n += 1;
    grid.push_back(line);
    m = line.size();
  }
  for (int i = 0; i < grid.size(); ++i) {
    for (int j = 0; j < grid[i].size(); ++j) {
      if (grid[i][j] == 'S') {
        S = {i, j};
        grid[i][j] = 'a';
        candidates.push_back(S);
      }
      if (grid[i][j] == 'E') {
        E = {i, j};
        grid[i][j] = 'z';
      }
      if (grid[i][j] == 'a') {
        candidates.push_back({i, j});
      }
    }
  }
  queue<node> Q;
  map<node, int> distance;
  for(const auto& candidate : candidates) {
    distance[candidate] = 0;
    Q.push(candidate);
    cout << "Queued: " << candidate.first << "," << candidate.second << endl;
  }
  while (!Q.empty()) {
    node v = Q.front();
    Q.pop();
    if (v == E) {
      cout << "Found Goal." << endl;
      break;
    }
    for (int i = 0; i < 4; ++i) {
      int newx = v.first + dx[i];
      int newy = v.second + dy[i];
      node newnode = {newx, newy};
      if (distance.count(newnode) != 0) {
        continue;
      }
      if (newx < 0 or newy < 0 or newx >= n or newy >= m) {
        continue;
      }
      if (grid[newx][newy] - grid[v.first][v.second] > 1) {
        continue;
      }
      distance[newnode] = distance[v] + 1;
      Q.push(newnode);
      cout << "Queued: " << newnode.first << "," << newnode.second << endl;
    }
  }
  cout << distance[E] << endl;
  return 0;
}
