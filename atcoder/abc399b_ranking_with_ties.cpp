// vicfred
// https://atcoder.jp/contests/abc399/tasks/abc399_b
// implementation
#include <functional>
#include <iostream>
#include <vector>
#include <set>

using namespace std;

int main() {
  int n;
  cin >> n;
  vector<int> p(n);
  vector<int> ranking(n);
  for(int i = 0; i < n; ++i) {
    cin >> p[i];
  }
  set<int, greater<int>> highest;
  for(const auto &rank : p) {
    highest.insert(rank);
  }
  int r = 1;
  while(!highest.empty()) {
    int x = *highest.begin();
    highest.erase(highest.begin());
    int k = 0;
    for(int i = 0; i < n; ++i) {
      if(p[i] == x) {
        ranking[i] = r;
        k += 1;
      }
    }
    r += k;
  }
  for(int i = 0; i < n; ++i) {
    cout << ranking[i] << endl;
  }
  return 0;
}
