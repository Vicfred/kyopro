#include <iostream>
#include <string>
#include <vector>

using namespace std;

int main() {
  vector<long> point;
  for(int i = 0; i < 100; ++i) {
    point.push_back(i);
  }
  int pos = 50;
  cout << point[pos] << endl;
  string line;
  int ans = 0;
  while(getline(cin, line)) {
    long movement = stoll(line.substr(1));
    if(line[0] == 'L') {
      pos -= movement;
      while(pos < 0) {
        pos += 100;
      }
    } else {
      pos += movement;
      while(pos >= 100) {
        pos -= 100;
      }
    }
    cout << point[pos] << endl;
    if(point[pos] == 0) {
      ans += 1;
    }
  }
  cout << "ans: " << ans << endl;
  return 0;
}
