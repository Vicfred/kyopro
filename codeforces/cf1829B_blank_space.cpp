// vicfred
// https://codeforces.com/contest/1829/problem/B
// implementation
#include <iostream>
#include <vector>

using namespace std;

int main() {
  int t;
  cin >> t;
  while(t--) {
    int n;
    cin >> n;
    vector<int> a(n);
    for(int i = 0; i < n; ++i) {
      cin >> a[i];
    }
    int maxima = 0;
    int current = 0;
    for(int i = 0; i < n; ++i) {
      if(a[i] == 1) {
        current = 0;
      } else {
        current += 1;
        maxima = max(maxima, current);
      }
    }
    cout << maxima << endl;
  }
  return 0;
}
