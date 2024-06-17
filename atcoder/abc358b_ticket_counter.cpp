// Vicfred
// https://atcoder.jp/contests/abc358/tasks/abc358_b
// implementation
#include <iostream>
#include <vector>

using namespace std;

int main() {
  long long int N, A;
  cin >> N >> A;
  vector<long long int> T(N);
  for(int i = 0; i < N; ++i) {
    cin >> T[i];
  }
  cout << T[0] + A << endl;
  int current = T[0] + A;
  for(int i = 1; i < N; ++i) {
    if(current <= T[i]) {
      current = T[i] + A;
      cout << current << endl;
    } else {
      current = T[i] + abs(T[i] - current) + A;
      cout << current << endl;
    }
  }
  return 0;
}
