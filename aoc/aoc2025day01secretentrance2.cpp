#include <iostream>
#include <string>
#include <vector>

using namespace std;

int main() {
  vector<long> point;
  for(int i = 0; i < 100; ++i) {
    point.push_back(i);
  }
  long pos = 50;
  cout << point[pos] << endl;
  string line;
  long ans = 0;
  while(getline(cin, line)) {
    long movement = stoll(line.substr(1));
    if(line[0] == 'L') {
      if(pos == 0) {
        ans -= 1;
      }
      pos -= movement;
      while(pos < 0) {
        pos += 100;
        ans += 1;
      }
      if(pos == 0) {
        ans += 1;
      }
    } else {
      pos += movement;
      while(pos >= 100) {
        pos -= 100;
        ans += 1;
      }
    }
    cout << point[pos] << " ans: " << ans << endl;
  }
  cout << "ans: " << ans << endl;
  return 0;
}
