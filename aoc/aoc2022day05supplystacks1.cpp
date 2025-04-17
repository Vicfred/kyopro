// vicfred
// https://adventofcode.com/2022/day/5
// implementation
#include <cstdio>
#include <deque>
#include <fstream>
#include <iostream>
#include <iterator>
#include <sstream>
#include <stack>
#include <vector>

using namespace std;

int main() {
  ifstream input("input.txt");
  int line_number = 0;
  vector<deque<char>> stacks(10);
  for (string line; getline(input, line);) {
    line_number += 1;
    if (line_number >= 1 and line_number <= 8) {
      for (int i = 0; i < 9; ++i) {
        if (line[1 + 4 * i] != ' ') {
          stacks[i + 1].push_back(line[1 + 4 * i]);
        }
      }
      continue;
    }
    if (line_number == 9 or line_number == 10) {
      continue;
    }
    int number, from, to;
    sscanf(line.c_str(), "move %d from %d to %d\n", &number, &from, &to);
    vector<char> items;
    cout << "move " << number << " from " << from << " to " << to << endl;
    for(int i = 0; i < number; ++i) {
      char item = stacks[from].front();
      stacks[from].pop_front();
      stacks[to].push_front(item);
    }
  }
  for (int i = 1; i < 10; ++i) {
    cout << i << endl;
    for (auto item : stacks[i]) {
      cout << item << " ";
    }
    cout << endl;
  }
  for(int i = 0; i < 10; ++i) {
    cout << stacks[i].front();
  } cout << endl;
  return 0;
}
