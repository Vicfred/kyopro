// vicfred
// https://atcoder.jp/contests/abc386/tasks/abc386_c
// string manipulation, edit distance, levenshtein, string

/*
 * The problem for K > 1 can be solved with a modification
 * of the classical DP for the Levenshtein distance.
 *
 * The problem can be solved directly with the Levenshtein
 * automaton but I couldn't implement it or find an
 * implementation.
*/
#include <algorithm>
#include <cstdint>
#include <iostream>

using namespace std;

int main() {
  int64_t k;
  cin >> k;
  string s, t;
  cin >> s;
  cin >> t;
  for(int64_t times = 1; times <= 2; ++times) {
    while(s.back() == t.back() and !s.empty() and !t.empty() ) {
      s.pop_back();
      t.pop_back();
    }
    reverse(s.begin(), s.end());
    reverse(t.begin(), t.end());
  }
  if(s.size() <= 1 and t.size() <= 1) {
    cout << "Yes" << endl;
  } else {
    cout << "No" << endl;
  }
  return 0;
}
