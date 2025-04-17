// vicfred
// https://adventofcode.com/2022/day/3
// implementation
#include <fstream>
#include <iostream>
#include <set>

using namespace std;

int priority(char ch) {
  if (ch - 0 < 97) {
    return ch - 'A' + 1 + 26;
  }
  return ch - 'a' + 1;
}

int main() {
  ifstream input("input.txt");

  long long score = 0LL;
  int mod = 0;
  set<char> rucksack;
  set<char> intersection;
  set<char> badge;
  for (string line; getline(input, line);) {
    mod = mod % 3;
    if (mod == 0) {
      rucksack.clear();
      for (int i = 0; i < line.size(); ++i) {
        rucksack.insert(line[i]);
      }
      mod += 1;
      continue;
    }
    if (mod == 1) {
      intersection.clear();
      for (int i = 0; i < line.size(); ++i) {
        if (rucksack.count(line[i]) > 0) {
          intersection.insert(line[i]);
        }
      }
      mod += 1;
      continue;
    }
    for (int i = 0; i < line.size(); ++i) {
      if (intersection.count(line[i]) > 0) {
        badge.insert(line[i]);
      }
    }
    for (const auto &item : badge) {
      score += priority(item);
    }
    mod += 1;
    badge.clear();
  }
  cout << score << endl;
  return 0;
}
