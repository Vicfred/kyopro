#include <iostream>

using namespace std;

int main() {
  int t;
  cin >> t;
  while(t--) {
    string s;
    cin >> s;
    const string t = "codeforces";
    int ans = 0;
    for(int i = 0; i < 10; ++i) {
      if(s[i] != t[i]) {
        ans += 1;
      }
    }
    cout << ans << endl;
  }
  return 0;
}
