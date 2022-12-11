// Vicfred
// https://adventofcode.com/2022/day/9
// implementation
#include <fstream>
#include <iostream>
#include <iterator>
#include <sstream>
#include <unordered_map>
#include <utility>
#include <vector>

using namespace std;

const int dx[8] = {1, 0, -1, 0, 1, 1, -1, -1},
          dy[8] = {0, 1, 0, -1, -1, 1, -1, 1};
const int xx[4] = {1, 0, -1, 0}, xy[4] = {0, 1, 0, -1};
const int zx[4] = {1, 1, -1, -1}, zy[4] = {-1, 1, -1, 1};

bool is_in_sight(const pair<int, int> &tail, const pair<int, int> &head) {
  bool found = false;
  for (int i = 0; i < 8; ++i) {
    if (tail.first + dx[i] == head.first and
        tail.second + dy[i] == head.second) {
      found = true;
    }
  }
  return found;
}

int main() {
  unordered_map<int, unordered_map<int, char>> grid;
  grid[0][0] = '#';
  pair<int, int> head, tail;
  head = tail = {0, 0};
  ifstream input("input.txt");
  for (string line; getline(input, line);) {
    istringstream iss(line);
    const vector<string> tokens(istream_iterator<string>{iss},
                                istream_iterator<string>());
    const char direction = line[0];
    const int distance = stoi(tokens[1]);
    for (int t = 0; t < distance; ++t) {
      switch (direction) {
      case 'U':
        head.second += 1;
        break;
      case 'D':
        head.second -= 1;
        break;
      case 'R':
        head.first += 1;
        break;
      case 'L':
        head.first -= 1;
        break;
      default:
        cout << "Invalid case." << endl;
        break;
      }
      cout << "head in: " << head.first << "," << head.second << endl;
      cout << "tail in: " << tail.first << "," << tail.second << endl;
      if (is_in_sight(tail, head) or (tail.first == head.first and tail.second == head.second)) {
        continue;
      }
      bool cross = false;
      for (int i = -2; i < 3; ++i) {
        if ((tail.first + i == head.first and tail.second == head.second) or
            (tail.first == head.first and tail.second + i == head.second)) {
          cross = true;
        }
      }
      if (cross) {
        cout << "moving in cross" << endl;
        for (int i = 0; i < 4; ++i) {
          if (is_in_sight({tail.first + xx[i], tail.second + xy[i]}, head)) {
            tail.first += xx[i];
            tail.second += xy[i];
            grid[tail.first][tail.second] = '#';
            cout << "moved to: " << tail.first << "," << tail.second << endl;
            break;
          }
        }
      } else {
        cout << "moving in diagonal" << endl;
        for (int i = 0; i < 4; ++i) {
          if (is_in_sight({tail.first + zx[i], tail.second + zy[i]}, head)) {
            tail.first += zx[i];
            tail.second += zy[i];
            grid[tail.first][tail.second] = '#';
            cout << "moved to: " << tail.first << "," << tail.second << endl;
            break;
          }
        }
      }
    }
  }
  int ans = 0;
  for (auto outer_map : grid) {
    ans += outer_map.second.size();
  }
  cout << ans << endl;
  return 0;
}
