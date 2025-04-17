// vicfred
// https://adventofcode.com/2022/day/6
// implementation
#include <fstream>
#include <iostream>
#include <set>

using namespace std;

int main() {
  ifstream input("input.txt");
  string line;
  getline(input, line);
  for (int i = 13; i < line.size(); ++i) {
    set<char> letters;
    for (int j = 0; j < 14; ++j) {
      letters.insert(line[i - j]);
    }
    if (letters.size() >= 14) {
      cout << i + 1 << endl;
      break;
    }
  }
  return 0;
}
