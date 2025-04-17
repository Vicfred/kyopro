// vicfred
// https://codeforces.com/problemset/problem/1742/G
// greedy
#include <algorithm>
#include <functional>
#include <iostream>
#include <istream>
#include <map>
#include <vector>

using namespace std;

int msb(long long n) {
  int k = __builtin_clz(n);
  return 1 << (31 - k);
}

int main() {
  long long t;
  cin >> t;
  while (t--) {
    long long n;
    cin >> n;
    vector<long long> a(n);
    for (int i = 0; i < n; ++i) {
      cin >> a[i];
    }
    int current_or = 0;
    vector<int> visited(n);
    for(int i = 0; i < min(n, 31LL); ++i) {
      int maxima = 0;
      int idx = -1;
      for(int j = 0; j < n; ++j) {
        if(visited[j]) {
          continue;
        }
        if((current_or | a[j]) > maxima) {
          maxima = current_or | a[j];
          idx = j;
        }
      }
      visited[idx] = 1;
      cout << a[idx] << " ";
      current_or |= a[idx];
    }
    for(int i = 0; i < n; ++i) {
      if(!visited[i]) {
        cout << a[i] << " ";
      }
    }
    cout << endl;
  }
  return 0;
}
