// Vicfred
// https://atcoder.jp/contests/abc321/tasks/abc321_b
// implementation, brute force
#include <algorithm>
#include <iostream>
#include <vector>

using namespace std;

int main() {
  int N, X;
  cin >> N >> X;
  vector<int> A;
  for (int i = 0; i < N - 1; ++i) {
    int a;
    cin >> a;
    A.push_back(a);
  }
  int ans = -1;
  for(int x = 0; x <= 100; ++x) {
    A.push_back(x);
    sort(begin(A), end(A));
    int sum = 0;
    for(int i = 1; i < N - 1; ++i) {
      sum += A[i];
    }
    if(sum >= X) {
      ans = x;
      /*
      for(const auto &item : A) {
        cout << item << " ";
      } cout << endl;
      cout << sum << endl;
      cout << X << endl;
      */
      break;
    } else {
      for(auto i = A.begin(); i != A.end(); ++i) {
        if(*i == x) {
          A.erase(i);
          break;
        }
      }
    }
  }
  cout << ans << endl;
  return 0;
}
