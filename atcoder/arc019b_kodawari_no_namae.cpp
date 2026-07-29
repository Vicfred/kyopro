// vicfred
// https://atcoder.jp/contests/arc019/tasks/arc019_2
// strings, palindromes, counting, case analysis, combinatorics
#include <cstdint>
#include <iostream>
#include <string>

using namespace std;

int main() {
  string A;
  cin >> A;

  int64_t N = static_cast<int64_t>(A.size());
  int64_t mismatches = 0;

  for (int64_t i = 0; i < N / 2; ++i) {
    if (A[i] != A[N - 1 - i]) {
      mismatches += 1;
    }
  }

  int64_t answer = 25 * N;
  
  if (mismatches == 0 && N % 2 == 1) {
    answer -= 25;
  } else if (mismatches == 1) {
    answer -= 2;
  }

  cout << answer << endl;
  return 0;
}
