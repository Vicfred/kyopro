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
  vector<int64_t> ids;
  string line;
  bool afterBlank = false;

  while (getline(cin, line)) {
    if (line.size() == 0) {
      afterBlank = true;
      continue;
    }
    if (!afterBlank) {
      size_t dash = line.find('-');
      string left = line.substr(0, dash);
      string right = line.substr(dash + 1);
      int64_t l = stoll(left);
      int64_t r = stoll(right);
      if (l > r) {
        swap(l, r);
      }
      ranges.push_back({l, r});
    } else {
      int64_t x = stoll(line);
      ids.push_back(x);
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
    if (l <= curR) {
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

  int64_t freshCount = 0;
  for (int64_t x : ids) {
    int64_t lo = 0;
    int64_t hi = (int64_t)merged.size() - 1;
    bool fresh = false;
    while (lo <= hi) {
      int64_t mid = (lo + hi) / 2;
      int64_t l = merged[mid].first;
      int64_t r = merged[mid].second;
      if (x < l) {
        hi = mid - 1;
      } else if (x > r) {
        lo = mid + 1;
      } else {
        fresh = true;
        break;
      }
    }
    if (fresh) {
      freshCount++;
    }
  }

  cout << freshCount << endl;
  return 0;
}
