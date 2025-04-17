// vicfred
// https://www.facebook.com/codingcompetitions/hacker-cup/2022/qualification-round/problems/A
// greedy, math
#include <iostream>
#include <set>
#include <vector>

using namespace std;

int main() {
  int T;
  cin >> T;
  for (int kase = 1; kase <= T; ++kase) {
    int N, K;
    cin >> N >> K;
    vector<int> S(N);
    for (int i = 0; i < N; ++i) {
      cin >> S[i];
    }
    set<int> caseA, caseB;
    bool valid = true;
    for (const auto &clock : S) {
      if (caseA.count(clock) > 0) {
        if (caseB.count(clock) > 0) {
          valid = false;
        } else {
          caseB.insert(clock);
        }
      } else {
        if (caseA.size() < K) {
          caseA.insert(clock);
        } else {
          caseB.insert(clock);
        }
      }
    }
    if (caseA.size() > K or caseB.size() > K) {
      valid = false;
    }
    if (valid) {
      cout << "Case #" << kase << ": YES" << endl;
    } else {
      cout << "Case #" << kase << ": NO" << endl;
    }
  }
  return 0;
}
