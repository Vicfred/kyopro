// Vicfred
// https://codeforces.com/contest/1703/problem/C
// implementation
#include <iostream>
#include <vector>

using namespace std;

int main() {
  int t;
  cin >> t;
  while (t--) {
    int n;
    cin >> n;
    vector<int> a(n);
    for (int i = 0; i < n; ++i) {
      cin >> a[i];
    }
    for (int i = 0; i < n; ++i) {
      int b;
      cin >> b;
      string s;
      cin >> s;
      for (const auto &ch : s) {
        if (ch == 'D') {
          a[i]++;
        } else {
          a[i]--;
        }
      }
      cout << (a[i] + 10) % 10 << " ";
    }
    cout << endl;
  }
  return 0;
}
