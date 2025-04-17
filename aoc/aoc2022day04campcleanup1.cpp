// vicfred
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
    int v,w,x,y;
    sscanf(line.c_str(), "%d-%d,%d-%d", &v, &w, &x, &y);
    // cout << v << " " << w << " " << x << " " << y << endl;
    if(v <= x and y <= w or x <= v and w <= y) {
      ans += 1;
    }
  }
  cout << ans << endl;
  return 0;
}
