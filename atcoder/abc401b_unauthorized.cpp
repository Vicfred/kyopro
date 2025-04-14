// vicfred
// https://atcoder.jp/contests/abc401/tasks/abc401_b
// implementation
#include <iostream>
#include <string>

using namespace std;

int main() {
  int n;
  cin >> n;
  bool logged = false;
  int ans = 0;
  for(int i = 0; i < n; ++i) {
    string operation;
    cin >> operation;
    if(operation == "login") {
      logged = true;
    }
    if(operation == "logout") {
      logged = false;
    }
    if(operation == "private" and !logged) {
      ans += 1;
    }
  }
  cout << ans << endl;
  return 0;
}
