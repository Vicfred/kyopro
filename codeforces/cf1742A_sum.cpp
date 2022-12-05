// Vicfred
// https://codeforces.com/contest/1742/problem/A
// implementation
#include <iostream>

using namespace std;

int main() {
  int t;
  cin >> t;
  while(t--) {
    int a, b, c;
    cin >> a >> b >> c;
    if(a == b + c || b == a + c || c == a + b) {
      cout << "YES" << endl;
    } else {
      cout << "NO" << endl;
    }
  }
}
