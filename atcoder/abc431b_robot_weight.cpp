// vicfred
// https://atcoder.jp/contests/abc431/tasks/abc431_b
// data structures
#include <iostream>
#include <vector>

using namespace std;

int main() {
  int X;
  cin >> X;
  unsigned int N;
  cin >> N;
  vector<int> W(N);
  for(int &w : W) {
    cin >> w;
  }
  int Q;
  cin >> Q;
  vector<char> used(N, 0);
  for(int i = 0; i < Q; ++i) {
    unsigned int P;
    cin >> P;
    if(used[P-1] == 0) {
      X += W[P-1];
      used[P-1] = 1;
    } else {
      X -= W[P-1];
      used[P-1] = 0;
    }
    cout << X << endl;
  }
  return 0;
}
