// vicfred
// https://codeforces.com/contest/2042/problem/B
// greedy
#include <algorithm>
#include <iostream>
#include <map>
#include <vector>

using namespace std;

int main() {
  int t;
  cin >> t;
  while (t--) {
    int n;
    cin >> n;
    vector<int> c(n);
    map<int, int> counter;
    for (int i = 0; i < n; ++i) {
      cin >> c[i];
      counter[c[i]] += 1;
    }
    vector<int> colors;
    for (const auto &[key, value] : counter) {
      colors.push_back(value);
    }
    sort(begin(colors), end(colors));
    int answer = 0;
    for (int i = 0; i < colors.size(); ++i) {
      if (i % 2 == 0 and colors[i] == 1) {
        answer += 1;
      }
      if (i % 2 == 1 and colors[i] == 1) {
        answer -= 1;
      }
      answer += 1;
    }
    cout << answer << endl;
  }
  return 0;
}
