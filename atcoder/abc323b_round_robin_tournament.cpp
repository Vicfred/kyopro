// vicfred
// https://atcoder.jp/contests/abc323/tasks/abc323_b
// data structures
#include <cwchar>
#include <functional>
#include <iostream>
#include <set>
#include <utility>
#include <vector>

using namespace std;

struct point {
  int x, y;
};

struct pointCmp {
  bool operator()(const point &lhs, const point &rhs) const {
    if (lhs.x == rhs.x) {
      return lhs.y < rhs.y;
    }
    return lhs.x > rhs.x;
  }
};

int main() {
  int N;
  cin >> N;
  vector<string> S(N);
  for (int i = 0; i < N; ++i) {
    cin >> S[i];
  }
  set<point, pointCmp> scores;
  for (int i = 0; i < N; ++i) {
    int score = 0;
    for (int j = 0; j < N; ++j) {
      if (S[i][j] == 'o') {
        score += 1;
      }
    }
    scores.insert({score, i});
  }
  for (const auto &[score, player] : scores) {
    cout << player + 1 << " ";
  }
  cout << endl;
  return 0;
}
