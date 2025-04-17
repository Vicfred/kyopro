// vicfred
// https://codeforces.com/contest/1807/problem/C
// greedy
#include <iostream>
#include <set>

using namespace std;

int main() {
  int t;
  cin >> t;
  while(t--) {
    int n;
    cin >> n;
    string s;
    cin >> s;
    set<char> zero, one;
    for(int i = 0; i < n; ++i) {
      if(i % 2 == 0) {
        zero.insert(s[i]);
      } else {
        one.insert(s[i]);
      }
    }
    bool valid = true;
    for(char ch = 'a'; ch <= 'z'; ++ch) {
      if(zero.count(ch) > 0 and one.count(ch) > 0) {
        valid = false;
        break;
      }
    }
    if(valid) {
      cout << "YES" << endl;
    } else {
      cout << "NO" << endl;
    }
  }
  return 0;
}
