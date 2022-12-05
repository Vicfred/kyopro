// Vicfred
// https://adventofcode.com/2022/day/3
// implementation
#include <fstream>
#include <iostream>
#include <set>

using namespace std;

int main() {
  ifstream input("input.txt");

  long long score = 0LL;
  for (string line; getline(input, line);) {
    set<char> rucksack1, rucksack2;
    int len = line.size() / 2;
    for (int i = 0; i < len; ++i) {
      rucksack1.insert(line[i]);
    }
    for (int i = len; i < line.size(); ++i) {
      rucksack2.insert(line[i]);
    }
    for(const auto &item : rucksack2) {
      if(rucksack1.count(item)) {
        if(item - 0 < 97) {
          score += item - 'A' + 1 + 26;
        } else {
          score += item - 'a' + 1;
        }
      }
    }
  }
  cout << score << endl;
  return 0;
}
