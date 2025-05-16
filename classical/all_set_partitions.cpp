// vicfred
//
// backtracking
#include <iostream>
#include <vector>

using namespace std;

void allSetPartitions(const vector<int> &A, int idx,
                      vector<vector<int>> &current,
                      vector<vector<vector<int>>> &result) {
  if (idx >= A.size()) {
    result.push_back(current);
    return;
  }
  for (size_t i = 0; i < current.size(); ++i) {
    current[i].push_back(A[idx]);
    allSetPartitions(A, idx + 1, current, result);
    current[i].pop_back();
  }
  current.push_back({A[idx]});
  allSetPartitions(A, idx + 1, current, result);
  current.pop_back();
}

vector<vector<vector<int>>> allSetPartitions(const vector<int> &A) {
  vector<vector<vector<int>>> result;
  vector<vector<int>> current;
  allSetPartitions(A, 0, current, result);
  return result;
}

int main() {
  vector<int> A = {2, 4, 5};
  auto partitions = allSetPartitions(A);
  cout << "Generated " << partitions.size() << " partitions of { ";
  for(const auto& item : A) {
    cout << item << " ";
  }
  cout << "}.\n";

  // Example: print them
  for (auto &part : partitions) {
    cout << "{ ";
    for (auto &block : part) {
      cout << "{ ";
      for (int x : block)
        cout << x << ' ';
      cout << "} ";
    }
    cout << "}\n";
  }

  return 0;
}
