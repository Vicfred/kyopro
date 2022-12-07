// Vicfred
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
  int pos = 3;
  for (int i = 3; i < line.size(); ++i) {
    ++pos;
    set<char> letters;
    letters.insert(line[i - 3]);
    letters.insert(line[i - 2]);
    letters.insert(line[i - 1]);
    letters.insert(line[i - 0]);
    if (letters.size() >= 4) {
      cout << pos << endl;
      break;
    }
  }
  return 0;
}
