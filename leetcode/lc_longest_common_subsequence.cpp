// vicfred
// https://leetcode.com/problems/longest-common-subsequence/
// dynamic programming, string manipulation
#include <cstdint>
#include <string>
#include <vector>

using namespace std;

int64_t lcs(const string &s, const string &t, const int n, const int m,
            vector<vector<int64_t>> &memo) {
  if(n == 0) {
    return 0;
  }
  if(m == 0) {
    return 0;
  }
  if(memo[n][m] != -1) {
    return memo[n][m];
  }
  if(s[n - 1] == t[m - 1]) {
    return memo[n][m] = 1 + lcs(s, t, n - 1, m - 1, memo);
  }
  return memo[n][m] = max(lcs(s, t, n - 1, m, memo), lcs(s, t, n, m - 1, memo));
}

class Solution {
public:
  int longestCommonSubsequence(string text1, string text2) {
    int64_t n = text1.size();
    int64_t m = text2.size();
    vector<vector<int64_t>> memo(n + 1, vector<int64_t>(m + 1, -1));
    return lcs(text1, text2, n, m, memo);
  }
};
