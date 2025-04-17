// vicfred
// https://adventofcode.com/2022/day/1
// simulation
#include <algorithm>
#include <fstream>
#include <iostream>
#include <map>

using namespace std;

int main() {
  ifstream input("input.txt");

  map<char, int> result = {{'X', 0}, {'Y', 3}, {'Z', 6}};
  int total = 0;
  for (string line; getline(input, line);) {
    char opponent, you;
    // input >> opponent >> you;
    opponent = line[0];
    you = line[2];
    int score = 0;
    score += result[you];
    switch (you) {
    case 'X':
      if (opponent == 'A') {
        score += 3;
      } else if (opponent == 'B') {
        score += 1;
      } else {
        score += 2;
      }
      break;
    case 'Y':
      if (opponent == 'A') {
        score += 1;
      } else if (opponent == 'B') {
        score += 2;
      } else {
        score += 3;
      }
      break;
    case 'Z':
      if (opponent == 'A') {
        score += 2;
      } else if (opponent == 'B') {
        score += 3;
      } else {
        score += 1;
      }
      break;
    default:
      break;
    }
    total += score;
  }
  cout << total << endl;
  return 0;
}
