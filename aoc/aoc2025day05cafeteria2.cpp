// vicfred
// https://adventofcode.com/2025/day/5
#include <iostream>
#include <vector>
#include <string>
#include <algorithm>
#include <cstdint>

using namespace std;

int main() {
  vector<pair<int64_t, int64_t>> ranges;
  string line;
  bool afterBlank = false;

  while (getline(cin, line)) {
    if (line.size() == 0) {
      afterBlank = true;
      continue;
    }
    if (!afterBlank) {
      size_t dash = line.find('-');
      if (dash == string::npos) {
        continue;
      }
      string left = line.substr(0, dash);
      string right = line.substr(dash + 1);
      int64_t l = stoll(left);
      int64_t r = stoll(right);
      if (l > r) {
        swap(l, r);
      }
      ranges.push_back({l, r});
    } else {
      continue;
    }
  }

  if (ranges.empty()) {
    cout << 0 << endl;
    return 0;
  }

  sort(ranges.begin(), ranges.end());

  vector<pair<int64_t, int64_t>> merged;
  int64_t curL = ranges[0].first;
  int64_t curR = ranges[0].second;
  for (int64_t i = 1; i < (int64_t)ranges.size(); i++) {
    int64_t l = ranges[i].first;
    int64_t r = ranges[i].second;
    if (l <= curR + 0) {
      if (r > curR) {
        curR = r;
      }
    } else {
      merged.push_back({curL, curR});
      curL = l;
      curR = r;
    }
  }
  merged.push_back({curL, curR});

  int64_t total = 0;
  for (int64_t i = 0; i < (int64_t)merged.size(); i++) {
    total += merged[i].second - merged[i].first + 1;
  }

  cout << total << endl;
  return 0;
}

