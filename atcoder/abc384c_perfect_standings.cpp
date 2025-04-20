// vicfred
// https://atcoder.jp/contests/abc384/tasks/abc384_c
// bitmask, brute force
#include <algorithm>
#include <iostream>
#include <string>
#include <utility>
#include <vector>

using namespace std;

int main() {
  vector<int> points(5);
  for (int i = 0; i < 5; ++i) {
    cin >> points[i];
  }
  string letters = "ABCDE";
  vector<pair<int, string>> participants;
  for (int mask = 1; mask < (1 << 5); ++mask) {
    string participant = "";
    int score = 0;
    for (int digit = 0; digit < 5; ++digit) {
      if (mask & (1 << digit)) {
        participant += letters[digit];
        score += points[digit];
      } else {
      }
    }
    participants.push_back({score, participant});
  }
  sort(participants.begin(), participants.end(),
       [&](pair<int, string> &lhs, pair<int, string> &rhs) {
         if (lhs.first != rhs.first) {
           return lhs.first > rhs.first;
         }
         return lhs.second < rhs.second;
       });
  for (const auto &participant : participants) {
    cout << participant.second << endl;
  }
  return 0;
}
