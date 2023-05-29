// Vicfred
// https://atcoder.jp/contests/abc301/tasks/abc301_c
// greedy, implementation
#include <algorithm>
#include <iostream>
#include <map>
#include <set>
#include <string>
#include <vector>

using namespace std;

int main() {
  string S, T;
  cin >> S;
  cin >> T;
  /*
  cout << S << endl;
  cout << T << endl;
  for (char ch = 'a'; ch <= 'z'; ++ch) {
    cout << ch << ": " << ch - 'a' << endl;
  }
  cout << "@: " << '@' - 'a' << endl;
  */
  sort(begin(S), end(S));
  sort(begin(T), end(T));
  map<char, int> row1, row2;
  for (const auto &ch : S) {
    row1[ch] += 1;
  }
  for (const auto &ch : T) {
    row2[ch] += 1;
  }
  /*
  for (const auto &[ch, count] : row1) {
    cout << ch << ": " << count << endl;
  }
  cout << "======" << endl;
  for (const auto &[ch, count] : row2) {
    cout << ch << ": " << count << endl;
  }
  cout << "======" << endl;
  */
  set<char> atcoder = {'a', 't', 'c', 'o', 'd', 'e', 'r'};
  for (char ch = 'a'; ch <= 'z'; ++ch) {
    if ((row1[ch] != row2[ch]) and atcoder.count(ch) == 0) {
      cout << "No" << endl;
      return 0;
    }
  }
  for (const auto &ch : S) {
    if (ch == '@') {
      continue;
    }
    if (row1[ch] > row2[ch]) {
      // cout << "removing " << row1[ch] - row2[ch] << " " << ch << endl;
      // cout << row2['@'] << endl;
      row2['@'] -= row1[ch] - row2[ch];
      // cout << row2['@'] << endl;
      row2[ch] = row1[ch];
    }
  }
  for (const auto &ch : T) {
    if (ch == '@') {
      continue;
    }
    if (row2[ch] > row1[ch]) {
      // cout << "removing " << row2[ch] - row1[ch] << " " << ch << endl;
      // cout << row1['@'] << endl;
      row1['@'] -= row2[ch] - row1[ch];
      // cout << row1['@'] << endl;
      row1[ch] = row2[ch];
    }
  }
  /*
  for (const auto &[ch, count] : row1) {
    if (count == 0)
      continue;
    cout << ch << ": " << count << endl;
  }
  cout << "======" << endl;
  for (const auto &[ch, count] : row2) {
    if (count == 0)
      continue;
    cout << ch << ": " << count << endl;
  }
  cout << "======" << endl;
  */
  if(row1['@'] != row2['@'] or row1['@'] < 0 or row2['@'] < 0) {
    cout << "No" << endl;
  } else {
    cout << "Yes" << endl;
  }
  return 0;
}
