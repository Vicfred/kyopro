// vicfred
//
// backtracking
#include <iostream>
#include <vector>

using namespace std;

void allIntegerPartitions(int remaining, int maxPart, vector<int> &current,
                          vector<vector<int>> &out) {
  if (remaining == 0) {
    out.push_back(current);
    return;
  }
  for (int i = min(maxPart, remaining); i >= 1; --i) {
    current.push_back(i);
    allIntegerPartitions(remaining - i, i, current, out);
    current.pop_back();
  }
}

vector<vector<int>> integerPartitions(int n) {
  vector<vector<int>> result;
  vector<int> current;
  allIntegerPartitions(n, n, current, result);
  return result;
}

int main() {
  int n;
  cout << "Enter a positive integer n: ";
  if (!(cin >> n) || n < 1) {
    cerr << "Invalid input\n";
    return 1;
  }
  vector<vector<int>> all_integer_partitions = integerPartitions(n);
  cout << "Partitions of " << n << " (" << all_integer_partitions.size() << " total):\n";
  for (auto &p : all_integer_partitions) {
    cout << "[ ";
    for (int x : p)
      cout << x << ' ';
    cout << "]\n";
  }
  return 0;
}
