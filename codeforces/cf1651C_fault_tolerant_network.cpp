// Vicfred
// https://codeforces.com/problemset/problem/1651/C
// greedy, ad-hoc
#include <algorithm>
#include <cmath>
#include <iostream>
#include <limits>
#include <vector>

using namespace std;

long long best(const vector<long long> computers, int current) {
  long long minima = numeric_limits<long long>::max();
  long long pos = 0LL;
  for (int i = 0; i < computers.size(); ++i) {
    if (llabs(current - computers[i]) < minima) {
      minima = llabs(current - computers[i]);
      pos = i;
    }
  }
  return pos;
}

int main() {
  long long t;
  cin >> t;
  while (t--) {
    long long n;
    cin >> n;
    vector<long long> a(n);
    vector<long long> b(n);
    for (int i = 0; i < n; ++i) {
      cin >> a[i];
    }
    for (int i = 0; i < n; ++i) {
      cin >> b[i];
    }
    long long minima = numeric_limits<long long>::max();
    vector<long long> cds1 = {0, best(b, a[0]), n - 1};
    vector<long long> cds2 = {0, best(b, a[n - 1]), n - 1};
    for(int i : cds1) {
      for(int j : cds2) {
        long long ans = llabs(a[0] - b[i]) + llabs(a[n-1] - b[j]);
        if(i > 0 and j > 0) {
          ans += llabs(b[0] - a[best(a, b[0])]);
        }
        if(i < n - 1 && j < n - 1) {
          ans += llabs(b[n-1] - a[best(a, b[n-1])]);
        }
        minima = min(minima, ans);
      }
    }
    cout << minima << endl;
  }
  return 0;
}
