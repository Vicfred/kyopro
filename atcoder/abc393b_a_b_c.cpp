// Vicfred
// https://atcoder.jp/contests/abc393/tasks/abc393_b
// brute force
#include <iostream>
#include <string>

using namespace std;

int main() {
  string S;
  cin >> S;
  int n = S.length();
  int triples = 0;
  for(int i = 0; i < n; ++i) {
    for(int j = i + 1; j < n; ++j) {
      for(int k = j + 1; k < n; ++k) {
        if(j - i != k - j) {
          continue;
        }
        if(S[i] == 'A' and S[j] == 'B' and S[k] == 'C')
          triples += 1;
      }
    }
  }
  cout << triples << endl;
  return 0;
}
