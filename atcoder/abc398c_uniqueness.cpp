// vicfred
// https://atcoder.jp/contests/abc398/tasks/abc398_c
// data structures, dictionary
#include <cstdint>
#include <iostream>
#include <map>
#include <vector>

using namespace std;

int main() {
  int64_t N;
  cin >> N;
  vector<int64_t> A(N);
  map<int64_t, int64_t> counter;
  for(int i = 0; i < N; ++i) {
    cin >> A[i];
    counter[A[i]] += 1;
  }
  int64_t person = -1;
  int64_t maxima = INT64_MIN;
  for(int i = 0; i < N; ++i) {
    if(counter[A[i]] == 1 and A[i] > maxima) {
      person = i + 1;
      maxima = A[i];
    }
  }
  cout << person << endl;
  return 0;
}
