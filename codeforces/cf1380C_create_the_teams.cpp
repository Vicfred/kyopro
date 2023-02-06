// Vicfred
// https://codeforces.com/problemset/problem/1380/C
// greedy
#include <algorithm>
#include <iostream>
#include <vector>

using namespace std;

int main() {
  int t;
  cin >> t;
  while (t--) {
    long long n, x;
    cin >> n >> x;
    vector<long long> a(n);
    for (int i = 0; i < n; ++i) {
      cin >> a[i];
    }
    sort(a.begin(), a.end());
    /*
    for (auto item : a) {
      cout << item << " ";
    }
    cout << endl;
    */
    long long teams = 0LL;
    bool complete = true;
    while (complete) {
      long long current = 0LL;
      long long members = 0LL;
      while (current * members < x) {
        if (a.empty()) {
          break;
        }
        current = a.back();
        a.pop_back();
        members += 1;
      }
      if (current * members >= x) {
        teams += 1;
      } else {
       complete = false;
      }
    }
    cout << teams << endl;
  }
  return 0;
}
