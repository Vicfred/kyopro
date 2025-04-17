// vicfred
// https://atcoder.jp/contests/abc310/tasks/abc310_c
// data structures
#include <algorithm>
#include <iostream>
#include <set>
#include <string>

using namespace std;

int main() {
  long long N;
  cin >> N;
  set<string> sticks;
  for (int i = 0; i < N; ++i) {
    string S;
    cin >> S;
    string T(S);
    reverse(begin(T), end(T));
    if(sticks.count(S) == 0 and sticks.count(T) == 0) {
      sticks.insert(S);
    }
  }
  cout << sticks.size() << endl;
  return 0;
}
