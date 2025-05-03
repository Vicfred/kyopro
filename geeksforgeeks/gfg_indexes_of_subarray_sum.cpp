// vicfred
// https://www.geeksforgeeks.org/problems/subarray-with-given-sum-1587115621/1
// two pointers, sliding window
#include <cstdint>
#include <iostream>
#include <sstream>
#include <vector>

using namespace std;

class Solution {
public:
  vector<int> subarraySum(vector<int> &arr, int target) { 
    int32_t s, e; // set window
    s = e = 0;

    vector<int32_t> ans;
    int32_t current = 0;
    for(int i = 0; i < arr.size(); ++i) {
      current += arr[i];
      e = i;
      while(current > target and s < e) {
        current -= arr[s++];
      }
      if(current == target) {
        return {s + 1, e + 1};
      }
    }
    return {-1};
  }
};

int main() {
  int t;
  cin >> t;
  cin.ignore();
  while (t--) {
    vector<int> arr;
    int d;
    string input;

    getline(cin, input);
    stringstream ss(input);
    int number;
    while (ss >> number) {
      arr.push_back(number);
    }

    cin >> d;
    cin.ignore();

    Solution ob;
    vector<int> result = ob.subarraySum(arr, d);
    for (int i : result) {
      cout << i << " ";
    }
    cout << "\n~\n";
  }
  return 0;
}
