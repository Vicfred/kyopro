// Vicfred
// https://atcoder.jp/contests/abc322/tasks/abc322_b
// implementation, brute force
#include <iostream>
#include <string>

using namespace std;

int main() {
  int N, M;
  cin >> N >> M;
  string S, T;
  cin >> S;
  cin >> T;
  bool is_suffix, is_prefix;
  is_suffix = is_prefix = false;
  // cout << T.substr(0, N) << endl;
  // cout << T.substr(M - N, N) << endl;
  if(T.substr(0, N) == S) {
    is_prefix = true;
  }
  if(T.substr(M - N, N) == S) {
    is_suffix = true;
  }
  if(is_prefix and is_suffix) {
    cout << 0 << endl;
  } else if(is_prefix and !is_suffix) {
    cout << 1 << endl;
  } else if(is_suffix and !is_prefix) {
    cout << 2 << endl;
  } else {
    cout << 3 << endl;
  }
  return 0;
}
