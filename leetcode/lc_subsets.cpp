// vicfred
// https://leetcode.com/problems/subsets/description/
// backtracking
#include <iostream>
#include <vector>

using namespace std;

void allsubsets(const vector<int> &nums, vector<int> &current, int index,
                vector<vector<int>> &out) {
  if (index == nums.size()) {
    out.push_back(current);
    return;
  }

  allsubsets(nums, current, index + 1, out);
  current.push_back(nums[index]);
  allsubsets(nums, current, index + 1, out);
  current.pop_back();
}

vector<vector<int>> subsets(vector<int> &nums) {
  vector<int> current;
  vector<vector<int>> out;
  allsubsets(nums, current, 0, out);
  return out;
}

int main() { 
  vector<int> nums = {1, 2, 3, 4};
  auto all_subsets = subsets(nums);
  for(const auto& subset : all_subsets) {
    for(const auto& item : subset) {
      cout << item << " ";
    } cout << endl;
  }
  return 0; }
