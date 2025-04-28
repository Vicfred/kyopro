// vicfred
// https://leetcode.com/problems/edit-distance/description/
// dynamic programming, string manipulation
#include <algorithm>
#include <cstdint>
#include <string>
#include <vector>

using namespace std;

int64_t edit_distance(const string &s, const string &t, const int64_t n,
                      const int64_t m, vector<vector<int64_t>> &memo) {
  if (n == 0) {
    return m;
  }
  if (m == 0) {
    return n;
  }
  if (memo[n][m] != -1) {
    return memo[n][m];
  }
  if (s[n - 1] == t[m - 1]) {
    return memo[n][m] = edit_distance(s, t, n - 1, m - 1, memo);
  }
  return memo[n][m] = 1 + min({edit_distance(s, t, n - 1, m, memo),
                               edit_distance(s, t, n, m - 1, memo),
                               edit_distance(s, t, n - 1, m - 1, memo)});
}

class Solution {
public:
  int minDistance(string word1, string word2) {
    int64_t n = word1.size();
    int64_t m = word2.size();
    vector<vector<int64_t>> memo(n + 1, vector<int64_t>(m + 1, -1));
    return edit_distance(word1, word2, n, m, memo);
  }
};
