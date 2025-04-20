// vicfred
// https://leetcode.com/problems/longest-increasing-subsequence/description/
// dynamic programming, LIS
#include <algorithm>
#include <vector>

using namespace std;

int lis(const vector<int> &sequence, const int index, vector<int> &memo) {
  if (index == 0) {
    return memo[index] = 1;
  }
  if (memo[index] != -1) {
    return memo[index];
  }
  int maxima = 1;
  for (int i = 0; i < index; ++i) {
    if (sequence[i] < sequence[index]) {
      maxima = max(maxima, 1 + lis(sequence, i, memo));
    }
  }
  return memo[index] = maxima;
}

class Solution {
public:
  int lengthOfLIS(vector<int> &nums) {
    int n = nums.size();
    vector<int> memo(n, -1);
    int ans = 1;
    for (int i = 0; i < n; ++i) {
      ans = max(ans, lis(nums, i, memo));
    }
    return ans;
  }
};
