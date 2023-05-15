// Vicfred
// https://codeforces.com/contest/1829/problem/D
//
#include <iostream>
#include <queue>
#include <set>

using namespace std;

int main() {
  long long t;
  cin >> t;
  while (t--) {
    long long n, m;
    cin >> n >> m;
    set<long long> candidates;
    if (n < m) {
      cout << "NO" << endl;
      continue;
    }
    if (n == m) {
      cout << "YES" << endl;
      continue;
    }
    if (n % 3 != 0) {
      cout << "NO" << endl;
      continue;
    }
    queue<long long> q;
    q.push(n / 3LL);
    q.push(2LL * n / 3LL);
    while (!q.empty()) {
      long long v = q.front();
      q.pop();
      candidates.insert(v);
      if (v % 3 != 0) {
        continue;
      }
      q.push(v / 3LL);
      q.push(2LL * v / 3LL);
    }
    if(candidates.count(m) > 0) {
      cout << "YES" << endl;
    } else {
      cout << "NO" << endl;
    }
  }
  return 0;
}
