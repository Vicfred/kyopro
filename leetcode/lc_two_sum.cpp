// vicfred
// https://leetcode.com/problems/two-sum/
// two pointers
#include <algorithm>
#include <iostream>
#include <vector>

using namespace std;

class Solution {
public:
    vector<int> twoSum(vector<int>& nums, int target) {
      vector<int> result;
      int l = 0;
      int r = nums.size() - 1;
      sort(begin(nums), end(nums));
      while(l < r) {
        if(nums[l] + nums[r] == target) {
          return {l, r};
        } else if(nums[l] + nums[r] < target) {
          l += 1;
        } else {
          r -= 1;
        }
      }
      return {};
    }
};

int main() {
  Solution solution;
  vector<int> nums = {2,7,11,15};
  auto indexes = solution.twoSum(nums, 9);
  for(const auto& item : indexes) {
    cout << item << " ";
  } cout << endl;
  nums = {3,2,4};
  indexes = solution.twoSum(nums, 6);
  for(const auto& item : indexes) {
    cout << item << " ";
  } cout << endl;
  nums = {3,3};
  indexes = solution.twoSum(nums, 6);
  for(const auto& item : indexes) {
    cout << item << " ";
  } cout << endl;
  return 0;
}
