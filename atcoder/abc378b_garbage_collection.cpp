// Vicfred
// https://atcoder.jp/contests/abc378/tasks/abc378_b
// math, implementation
#include <iostream>
#include <vector>

using namespace std;

int main() {
  int N;
  cin >> N;
  vector<long long> r(N), q(N);
  for(int i = 0; i < N; ++i) {
    cin >> r[i] >> q[i];
  }
  int Q;
  cin >> Q;
  long long t, d;
  for(int i = 0; i < Q; ++i) {
    cin >> t >> d;
    t -= 1;
    int a = (d / r[t]) * r[t] + q[t];
    /*
    cout << "day " << d << endl;
    cout << "r: " << r[t] << endl;
    cout << "q: " << q[t] << endl;
    cout << "a: " << a << endl;
    */
    if(d <= a) {
      cout << a << endl;
    } else {
      cout << a + r[t] << endl;
    }
    // cout << "======" << endl;
  }
  return 0;
}
