// vicfred
// https://atcoder.jp/contests/abc357/tasks/abc357_a
// implementation
#include <iostream>
#include <vector>

using namespace std;

int main() {
  int N, M;
  cin >> N >> M;
  vector<int> H(N);
  for(int i = 0; i < N; ++i) {
    cin >> H[i];
  }
  int aliens = 0;
  for(int i = 0; i < N; ++i) {
    aliens++;
    M -= H[i];
    if(M <= 0) {
      break;
    }
  }
  if(M < 0) {
    aliens--;
  }
  cout << aliens << endl;
  return 0;
}
