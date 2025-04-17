// vicfred
// https://atcoder.jp/contests/abc320/tasks/abc320_b
// brute force
#include <algorithm>
#include <iostream>
#include <string>

using namespace std;

bool is_palindrome(string S) {
  string T;
  for (int i = S.size() - 1; i >= 0; i--) {
    T += S[i];
  }
  return S == T;
}

int main() {
  string S;
  cin >> S;
  int n = S.size();
  int maxima = 1;
  for (int ini = 0; ini < n; ++ini) {
    for (int fin = ini + 1; fin <= n; ++fin) {
      string T = S.substr(ini, fin - ini + 1);
      if (is_palindrome(T)) {
        maxima = max(maxima, (int)T.size());
      }
    }
  }
  cout << maxima << endl;
  return 0;
}
