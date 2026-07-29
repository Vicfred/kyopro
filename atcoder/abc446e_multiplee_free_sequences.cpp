// vicfred
// https://atcoder.jp/contests/adt_all_20260709_1/tasks/abc446_e
// graphs, functional graph, multi-source bfs, modular arithmetic
#include <cstdint>
#include <iostream>
#include <queue>
#include <vector>

using namespace std;

int main() {
  int64_t M, A, B;
  cin >> M >> A >> B;

  int64_t numberOfStates = M * M;
  vector<vector<int64_t>> reverseEdges(numberOfStates);

  for (int64_t x = 0; x < M; ++x) {
    for (int64_t y = 0; y < M; ++y) {
      int64_t currentState = x * M + y;

      int64_t nextX = y;
      int64_t nextY = (A * y + B * x) % M;
      int64_t nextState = nextX * M + nextY;

      reverseEdges[nextState].push_back(currentState);
    }
  }

  vector<char> bad(numberOfStates);
  queue<int64_t> states;
  int64_t badCount = 0;

  for (int64_t y = 0; y < M; ++y) {
    bad[y] = true;
    states.push(y);
    badCount += 1;
  }

  while(!states.empty()) {
    int64_t currentState = states.front();
    states.pop();

    for (int64_t previousState : reverseEdges[currentState]) {
      if(bad[previousState]) {
        continue;
      }

      bad[previousState] = true;
      states.push(previousState);
      badCount += 1;
    }
  }

  cout << numberOfStates - badCount << endl;
  return 0;
}
