// vicfred
// https://atcoder.jp/contests/abc360/tasks/abc360_b
// brute force, implementation
#include <iostream>
#include <string>
#include <vector>
#include <set>

using namespace std;

int main() {
  string S, T;
  cin >> S >> T;
  for (int w = 1; w < S.size(); ++w) {
    vector<string> cats(w);
    for (int i = 0; i < S.size(); i += w) {
      for (int j = i; j < i + w; ++j) {
        if (j >= S.size()) {
          break;
        }
        cats[j % w] += S[j];
      }
    }
    set<string> nekos(begin(cats), end(cats));
    if(nekos.count(T)) {
      cout << "Yes" << endl;
      return 0;
    }
  }
  cout << "No" << endl;
  return 0;
}
