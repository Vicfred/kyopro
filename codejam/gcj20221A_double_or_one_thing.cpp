// vicfred
// https://codingcompetitions.withgoogle.com/codejam/round/0000000000877ba5/0000000000aa8e9c
// bitmask, brute force, strings
#include <iostream>
#include <set>

namespace {
using namespace std;
}

int main() {
  int T;
  cin >> T;
  for (int cases = 1; cases <= T; ++cases) {
    string S;
    cin >> S;
    int N = S.size();
    set<string> bag;
    for (int mask = 0; mask < (1 << N); ++mask) {
      string generated = "";
      for (int i = 0; i < N; ++i) {
        if (mask & (1 << i)) {
          generated += S[i];
        }
        generated += S[i];
      }
      bag.insert(generated);
    }
    cout << "Case #" << cases << ": " << *bag.begin() << endl;
  }
  return 0;
}
