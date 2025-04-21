// vicfred
// https://atcoder.jp/contests/abc398/tasks/abc398_b
// brute force, data structure, dictionary
#include <cstdint>
#include <iostream>
#include <map>
#include <vector>

using namespace std;

int main() {
  vector<int64_t> as(7);
  map<int64_t, int64_t> counter;
  for (int i = 0; i < 7; ++i) {
    cin >> as[i];
    counter[as[i]] += 1;
  }
  bool found = false;
  for (int i = 1; i <= 13; ++i) {
    for (int j = i + 1; j <= 13; ++j) {
      if ((counter[i] >= 3 and counter[j] >= 2) or
          (counter[j] >= 3 and counter[i] >= 2)) {
        found = true;
      }
    }
  }
  cout << (found ? "Yes" : "No") << endl;
  return 0;
}
