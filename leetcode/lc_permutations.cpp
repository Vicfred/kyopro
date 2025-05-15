// vicfred
// https://leetcode.com/problems/permutations/
// backtracking
#include <iostream>
#include <utility>
#include <vector>

using namespace std;

void dfs(vector<int> &nums, int index, vector<vector<int>> &permutations) {
  if(index == nums.size()) {
    permutations.push_back(nums);
  }
  for(int i = index; i < nums.size(); ++i) {
    swap(nums[index], nums[i]);
    dfs(nums, index + 1, permutations);
    swap(nums[index], nums[i]);
  }
}

vector<vector<int>> permute(vector<int> &nums) {
  vector<vector<int>> permutations;
  dfs(nums, 0, permutations);
  return permutations;
}

int main() {
  vector<int> nums = {1,2,3, 4};
  const auto permutations = permute(nums);
  for(const auto& permutation : permutations) {
    for(const auto& item : permutation) {
      cout << item << " ";
    } cout << endl;
  }
  return 0;
}
