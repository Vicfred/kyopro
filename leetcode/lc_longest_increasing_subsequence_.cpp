// vicfred
// https://leetcode.com/problems/longest-increasing-subsequence/description/
// balanced tree, set, dictionary, LIS

/*
 * Solve the LIS problem using patience sort
 * using a ordered data structure.
*/
#include <set>
#include <vector>

using namespace std;

class Solution {
public:
  int lengthOfLIS(vector<int> &nums) {
    int n = nums.size();
    multiset<int> bst;
    bst.insert(nums[0]);
    for(int i = 1; i < n; ++i) {
      if(bst.lower_bound(nums[i]) == bst.end()) {
        bst.insert(nums[i]);
      } else {
        bst.erase(bst.lower_bound(nums[i]));
        bst.insert(nums[i]);
      }
    }
    return bst.size();
  }
};
