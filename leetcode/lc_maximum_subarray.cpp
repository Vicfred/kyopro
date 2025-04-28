// vicfred
// https://leetcode.com/problems/maximum-subarray/
// dynamic programming, greedy
#include <cstdint>
#include <vector>

using namespace std;

class Solution {
public:
    int maxSubArray(vector<int>& nums) {
        int sum = 0;
        int maxima = INT32_MIN;
        for(const auto &num : nums) {
            sum += num;
            maxima = max(maxima, sum);
            if(sum < 0) {
                sum = 0;
            }
        }
        return maxima;
    }
};
