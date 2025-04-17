// vicfred
// https://atcoder.jp/contests/abc350/tasks/abc350_b
// data structures
#include <iostream>
#include <map>

using namespace std;

int main() {
  int N, Q;
  cin >> N >> Q;
  map<int, int> teeth;
  for(int i = 1; i <= 1000; ++i) {
    teeth[i] = 1;
  }
  //cout << "teeth: " << N << endl;
  for(int i = 0; i < Q; ++i) {
    int t;
    cin >> t;
    if(teeth[t] == 0) {
      N += 1;
      teeth[t] = 1;
      //cout << "there is NOT a teeth in " << t << endl;
    } else {
      N -= 1;
      teeth[t] = 0;
      //cout << "there is a teeth in " << t << endl;
    }
    //cout << "teeth: " << N << endl;
  }
  cout << N << endl;
  return 0;
}
