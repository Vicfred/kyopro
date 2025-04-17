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

  map<char, int> play = {{'X', 1}, {'Y', 2}, {'Z', 3}};
  int total = 0;
  for (string line; getline(input, line);) {
    char opponent, you;
    //input >> opponent >> you;
    opponent = line[0];
    you = line[2];
    int score = 0;
    score += play[you];
    if(you == 'X') {
      switch (opponent) {
        case 'A':
          score += 3;
          break;
        case 'C':
          score += 6;
          break;
        default:
          break;
      }
    }
    if(you == 'Y') {
      switch (opponent) {
        case 'A':
          score += 6;
          break;
        case 'B':
          score += 3;
          break;
        default:
          break;
      }
    }
    if(you == 'Z') {
      switch (opponent) {
        case 'B':
          score += 6;
          break;
        case 'C':
          score += 3;
          break;
        default:
          break;
      }
    }
    total += score;
  }
  cout << total << endl;
  return 0;
}
