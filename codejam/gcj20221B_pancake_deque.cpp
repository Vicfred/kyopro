// Vicfred
// https://codingcompetitions.withgoogle.com/codejam/round/000000000087711b/0000000000acd59d
// greedy
#include <deque>
#include <iostream>

using namespace std;

int main() {
  int T;
  cin >> T;

  for (int cases = 1; cases <= T; ++cases) {
    long N;
    cin >> N;
    deque<long> D;
    for (int i = 0; i < N; ++i) {
      long pancake;
      cin >> pancake;
      D.push_back(pancake);
    }
    long maxima = -1L;
    long answer = 0;
    while (!D.empty()) {
      long pancake;
      if (D.front() <= D.back()) {
        pancake = D.front();
        D.pop_front();
      } else {
        pancake = D.back();
        D.pop_back();
      }
      if (pancake >= maxima) {
        ++answer;
        maxima = pancake;
      }
    }
    cout << "Case #" << cases << ": " << answer << endl;
  }
  return 0;
}
