// Vicfred
// https://adventofcode.com/2022/day/4
// implementation
#include <cstdio>
#include <fstream>
#include <iostream>

using namespace std;

int main() {
  ifstream input("input.txt");
  long long ans = 0LL;
  for (string line; getline(input, line);) {
    int v, w, x, y;
    sscanf(line.c_str(), "%d-%d,%d-%d", &v, &w, &x, &y);
    if (v == x) {
      ans += 1;
      continue;
    }
    if(v < x) {
      swap(v, x);
      swap(w, y);
    }
    if(y >= v) {
      ans += 1;
    }
  }
  cout << ans << endl;
  return 0;
}
