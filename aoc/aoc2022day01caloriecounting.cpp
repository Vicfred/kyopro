// Vicfred
// https://adventofcode.com/2022/day/1
#include <algorithm>
#include <iostream>
#include <fstream>

using namespace std;

int main() {
  ifstream input("input.txt");

  long long maxima = 0LL;
  long long current = 0LL;
  for(string line; getline(input, line);) {
    if(line == "") {
      maxima = max(maxima, current);
      current = 0LL;
      continue;
    }
    current += stoll(line);
  }

  cout << maxima << endl;

  return 0;
}
