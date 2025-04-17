// vicfred
// https://atcoder.jp/contests/abc378/tasks/abc378_a
// implementation
#include <iostream>
#include <vector>

using namespace std;

int main() {
  vector<int> A(10);
  cin >> A[1];
  cin >> A[2];
  cin >> A[3];
  cin >> A[4];
  vector<int> counter(10);
  counter[A[1]]++;
  counter[A[2]]++;
  counter[A[3]]++;
  counter[A[4]]++;
  int answer = 0;
  for (int i = 1; i <= 4; ++i) {
    answer += counter[i] / 2;
  }
  cout << answer << endl;
  return 0;
}
