// Vicfred
// https://adventofcode.com/2022/day/1
// data structures
#include <algorithm>
#include <iostream>
#include <fstream>
#include <set>

using namespace std;

int main() {
  ifstream input("input.txt");

  long long calories = 0LL;
  set<long long> snacks;
  for(string line; getline(input, line);) {
    if(line == "") {
      snacks.insert(calories);
      calories = 0LL;
      continue;
    }
    calories += stoll(line);
  }

  for(const auto& item : snacks) {
    cout << item << endl;
  }

  return 0;
}
