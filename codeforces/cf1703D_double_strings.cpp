// vicfred
// https://codeforces.com/contest/1703/problem/D
// data structures
#include <iostream>
#include <unordered_set>
#include <vector>

using namespace std;

int main() {
  long long t;
  cin >> t;
  while (t--) {
    long long n;
    cin >> n;
    vector<string> s(n);
    unordered_set<string> strings;
    for (int i = 0; i < n; ++i) {
      cin >> s[i];
      strings.insert(s[i]);
    }
    for (const auto &item : s) {
      bool found = false;
      for (int i = 1; i < item.size(); ++i) {
        if (strings.count(item.substr(i)) > 0 and
            strings.count(item.substr(0, i)) > 0) {
          found = true;
          break;
        }
      }
      if (found) {
        cout << 1;
      } else {
        cout << 0;
      }
    }
    cout << endl;
  }
  return 0;
}
