// vicfred
// https://atcoder.jp/contests/abc105/tasks/abc105_c
// modular arithmetic, math
#include <algorithm>
#include <iostream>
#include <string>

using namespace std;

int main() {
  int64_t N;
  cin >> N;

  if(N == 0) {
    cout << 0 << endl;
    return 0;
  }

  string answer;

  while(N != 0) {
    // Store the digits in reverse order.
    int64_t digit = (N % 2 + 2) % 2;
    answer.push_back(static_cast<char>('0' + digit));
    N = (N - digit) / -2;
  }

  reverse(answer.begin(), answer.end());

  cout << answer << endl;
  return 0;
}
