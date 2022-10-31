// Vicfred
// https://codeforces.com/contest/1703/problem/B
// data structures
#include <iostream>
#include <set>

using namespace std;

int main() {
  int t;
  cin >> t;
  while(t--) {
    set<char> solved;
    int n;
    cin >> n;
    string s;
    cin >> s;
    int balloons = 0;
    for(const auto &ch : s) {
      if(solved.count(ch) == 0) {
        solved.insert(ch);
        balloons++;
      }
      balloons++;
    }
    cout << balloons << endl;
  }
}
