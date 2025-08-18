// vicfred
// https://leetcode.com/problems/two-sum/
// two pointers
#include <algorithm>
#include <iostream>
#include <vector>
#include <set>

using namespace std;

class Solution {
public:
  vector<vector<int>> threeSum(vector<int> &nums) { 
    set<vector<int>> s;
    int N = nums.size();
    sort(begin(nums), end(nums));
    for(int i = 0; i < N; ++i) {
      int l = i + 1;
      int r = N - 1;
      int missing = -nums[i]; // nums[i] + nums[l] + nums[r] = target
      while(l < r) {
        if(nums[l] + nums[r] == missing) {
          s.insert({nums[i], nums[l], nums[r]});
          l += 1;
          r -= 1;
        } else if (nums[l] + nums[r] < missing) {
          l += 1;
        } else {
          r -= 1;
        }
      }
    }
    return vector<vector<int>>(begin(s),end(s));
  }
};

int main() {
  Solution solution;
  vector<int> nums = {-1, 0, 1, 2, -1, -4};
  auto result = solution.threeSum(nums);
  for (const auto &threesum : result) {
    for (const auto &element : threesum) {
      cout << element << " ";
    }
    cout << endl;
  }
  nums = {0, 1, 1};
  result = solution.threeSum(nums);
  for (const auto &threesum : result) {
    for (const auto &element : threesum) {
      cout << element << " ";
    }
    cout << endl;
  }
  nums = {0,0,0};
  result = solution.threeSum(nums);
  for (const auto &threesum : result) {
    for (const auto &element : threesum) {
      cout << element << " ";
    }
    cout << endl;
  }
  return 0;
}
