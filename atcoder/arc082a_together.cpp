// vicfred
// https://atcoder.jp/contests/abc072/tasks/arc082_a
// two pointers
#include <algorithm>
#include <cstdint>
#include <iostream>
#include <vector>

using namespace std;

int main() {
  int64_t N;
  cin >> N;

  vector<int64_t> A(N);
  for (int64_t &a : A) {
    cin >> a;
  }

  ranges::sort(A);

  /*
  for (int64_t &a : A) {
    cerr << a << " ";
  }
  cerr << endl;
  */

  int64_t left = 0;
  int64_t maxima = 0;

  for (int64_t right = left; right < N; ++right) {
    /*
    cerr << "left: " << left << " right: " << right << " "
         << A[left] << " " << A[right] << endl;
    */
    if (A[right] - A[left] > 2) {
      left += 1;
    }
    maxima = max(maxima, right - left + 1);
    // cerr << "maxima: " << maxima << endl;
  }

  cout << maxima << endl;

  return 0;
}
