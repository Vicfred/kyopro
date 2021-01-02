// unihernandez22
// https://atcoder.jp/contests/abc142/tasks/abc142_c
// sorting

#include<iostream>
#include<vector>
#include<utility>
#include<algorithm>

using namespace std;

int main() {
  int n; cin >> n;

  vector<pair<int, int>> a;
  for(int i = 1; i <= n; ++i) {
    pair<int, int> p;
    cin >> p.first; p.second = i;

    a.push_back(p);
  }

  sort(begin(a), end(a));

  for(pair<int, int> p: a) {
    cout << p.second << " ";
  }
  cout << endl;
}
