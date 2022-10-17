// Vicfred
// https://codeforces.com/contest/1742/problem/C
// greedy
#include <iostream>

using namespace std;

int main() {
  int t;
  cin >> t;
  while(t--) {
    bool found = false;
    for(int i = 0; i < 8; ++i) {
      string line;
      cin >> line;
      if(line == "RRRRRRRR") {
        found = true;
      }
    }
    if(found) {
      cout << "R" << endl;
    } else {
      cout << "B" << endl;
    }
  }
  return 0;
}
