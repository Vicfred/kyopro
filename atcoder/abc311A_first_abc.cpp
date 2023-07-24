// Vicfred
// https://atcoder.jp/contests/abc311/tasks/abc311_a
// implementation
#include <iostream>
#include <set>
#include <string>

using namespace std;

int main() {
  int n;
  cin >> n;
  string s;
  cin >> s;
  set<char> seen;
  int ans = 0;
  while(seen.size() < 3) {
    seen.insert(s[ans++]);
  }
  cout << ans << endl;
  return 0;
}
