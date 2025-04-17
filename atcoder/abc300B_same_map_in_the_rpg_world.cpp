// vicfred
// https://atcoder.jp/contests/abc300/tasks/abc300_b
// implementation, brute force
#include <iostream>
#include <string>
#include <vector>

using namespace std;

int main() {
  int H, W;
  cin >> H >> W;
  vector<string> A(H), B(H);
  for(int i = 0; i < H; ++i) {
    cin >> A[i];
    A[i] += A[i];
  }
  for(int i = 0; i < H; ++i) {
    A.push_back(A[i]);
  }
  for(int i = 0; i < H; ++i) {
    cin >> B[i];
  }
  bool found = false;
  // TODO(vicfred): consider optimizing this for memory
  for(int s = 0; s < H; ++s) {
    for(int t = 0; t < W; ++t) {
      bool valid = true;
      for(int u = 0; u < H; ++u) {
        for(int v = 0; v < W; ++v) {
          if(A[s + u][t + v] != B[u][v]) {
            valid = false;
          }
        }
      }
      if(valid) {
        found = true;
      }
    }
  }
  if(found == true)
    cout << "Yes" << endl;
  else
    cout << "No" << endl;
  return 0;
}
