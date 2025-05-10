// vicfred
// https://atcoder.jp/contests/abc405/tasks/abc405_b
// implementation
#include <iostream>
#include <vector>

using namespace std;

int main() {
  int n, m;
  cin >> n >> m;
  vector<int> as(n);
  for(int i = 0; i < n; ++i) {
    cin >> as[i];
  }
  for(int i = 1; i <= n; ++i) {
    vector<int> counter(m + 1, 0);
    counter[0] = 1;
    vector<int> allM(m + 1, 1);
    for(int j = 0; j <= n - i; ++j) {
      counter[as[j]] = 1;
    }
    if(counter != allM) {
      cout << i - 1 << endl;
      return 0;
    }
  }
  cout << n << endl;
  return 0;
}
