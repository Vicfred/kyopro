// Vicfred
// https://atcoder.jp/contests/abc359/tasks/abc359_a
// implementation
#include <iostream>
#include <vector>
#include <string>

using namespace std;

int main() {
  int N;
  cin >> N;
  vector<string> S(N);
  int takahashi = 0;
  for(int i = 0; i < N; ++i) {
    cin >> S[i];
    if(S[i] == "Takahashi") {
      takahashi += 1;
    }
  }
  cout << takahashi << endl;
  return 0;
}
