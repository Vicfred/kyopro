// vicfred
// https://atcoder.jp/contests/abc339/tasks/abc339_c
// binary search
#include <iostream>
#include <vector>

using namespace std;

int main() {
  long long N;
  cin >> N;
  vector<long long> A(N);
  for (int i = 0; i < N; ++i) {
    cin >> A[i];
  }
  long long low = 0LL;
  long long high = (1LL<<60);
  long long mid;
  while (low < high) {
    mid = (low + high) / 2LL;
    // cout << "trying " << mid << endl;
    long long total = mid;
    bool valid = true;
    for (int i = 0; i < N; ++i) {
      total += A[i];
      if (total < 0) {
        valid = false;
        break;
      }
    }
    if (valid) {
      // cout << mid << " was valid" << endl;
      high = mid;
    } else {
      // cout << mid << " was invalid" << endl;
      low = mid + 1;
    }
  }
  long long total = low;
  for (int i = 0; i < N; ++i) {
    total += A[i];
  }
  cout << total << endl;
  return 0;
}
