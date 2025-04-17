// vicfred
// https://codeforces.com/contest/1722/problem/A
// brute force, implementation
#include <algorithm>
#include <iostream>
#include <set>
#include <string>
#include <vector>

using namespace std;

int main() {
  vector<char> Timur{'T', 'i', 'm', 'u', 'r'};
  sort(Timur.begin(), Timur.end());
  set<string> spellings;
  do {
    string spelling(Timur.begin(), Timur.end());
    // cout << spelling << endl;
    spellings.insert(spelling);
  } while (next_permutation(Timur.begin(), Timur.end()));
  int t;
  cin >> t;
  while (t--) {
    int n;
    cin >> n;
    string s;
    cin >> s;
    if (spellings.count(s) > 0) {
      cout << "YES" << endl;
    } else {
      cout << "NO" << endl;
    }
  }
  return 0;
}
