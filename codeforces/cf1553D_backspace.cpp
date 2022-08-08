// Vicfred
// https://codeforces.com/problemset/problem/1553/D
// implementation
#include <iostream>

using namespace std;

int main() {
  int q;
  cin >> q;
  for(int kases = 0; kases < q; ++kases) {
    string s, t;
    cin >> s >> t;
    int n = s.size();
    int m = t.size();
    int count = 0;
    for(int i = n - 1, j = m - 1; i >= 0; --i) {
      if(s[i] == t[j]) {
        count += 1;
        // cout << "match de " << "s[" << i << "] = " << s[i] << " con " << "t[" << j << "] = " << t[j] << " so far: " << count << endl;
        j -= 1;
        continue;
      }
      i -= 1;
    }
    if(count >= m) {
      cout << "YES" << endl;
    } else {
      cout << "NO" << endl;
    }
  }
  return 0;
}
