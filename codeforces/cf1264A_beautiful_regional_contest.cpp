// vicfred
// https://codeforces.com/problemset/problem/1264/A
// greedy, data structures
#include <functional>
#include <iostream>
#include <vector>
#include <map>

using namespace std;

int main() {
  long long t;
  cin >> t;
  while(t--) {
    long long n;
    cin >> n;
    long long g, s, b;
    g = s = b = 0;
    vector<long long> p(n);
    map<long long, int, greater<long long>> counter;
    for(int i = 0; i < n; ++i) {
      cin >> p[i];
      counter[p[i]] += 1;
    }
    if(n < 10) {
      cout << "0 0 0" << endl;
      continue;
    }
    auto ptr = counter.begin();
    g = ptr->second;
    ++ptr;
    while(s <= g) {
      s += ptr->second;
      ++ptr;
    }
    while(g + s + b <= n/2) {
      b += ptr->second;
      ++ptr;
    }
    --ptr;
    b -= ptr->second;
    if(b <= 0 or g >= s or g >= b) {
      cout << "0 0 0" << endl;
      continue;
    }
    cout << g << " " << s << " " << b << endl;
  }
  return 0;
}
