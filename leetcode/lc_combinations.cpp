// vicfred
// https://leetcode.com/problems/combinations/description/
// backtracking
#include <iostream>
#include <vector>

using namespace std;

void allCombinations(const vector<int> &A, int index, int k,
                     vector<int> &current, vector<vector<int>> &combinations) {
  if (k == 0) {
    combinations.push_back(current);
    return;
  }
  if(index == A.size()) {
    return;
  }
  allCombinations(A, index + 1, k, current, combinations);
  current.push_back(A[index]);
  allCombinations(A, index + 1, k - 1, current, combinations);
  current.pop_back();
}

vector<vector<int>> combine(int n, int k) {
  vector<int> A;
  for (int i = 1; i <= n; ++i) {
    A.push_back(i);
  }
  vector<int> current;
  vector<vector<int>> all_combinations;
  allCombinations(A, 0, k, current, all_combinations);
  return all_combinations;
}

int main() {
  int n = 7, k = 3;
  auto combos = combine(n, k);
  cout << "All " << k << "-combinations of {1.." << n << "}:\n";
  for (const auto &comb : combos) {
    cout << "[";
    for (size_t i = 0; i < comb.size(); ++i) {
      cout << comb[i] << (i + 1 < comb.size() ? ", " : "");
    }
    cout << "]\n";
  }
  return 0;
}
