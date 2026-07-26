// vicfred
// https://atcoder.jp/contests/abc176/tasks/abc176_e
// data structures, frequency counting, combinatorics, sets
#include <algorithm>
#include <cstdint>
#include <iostream>
#include <set>
#include <utility>
#include <vector>

using namespace std;

int main() {
  uint64_t H, W, M;
  cin >> H >> W >> M;
  vector<uint64_t> row(H);
  vector<uint64_t> column(W);
  set<pair<uint64_t, uint64_t>> targets;
  for (uint64_t i = 0; i < M; ++i) {
    uint64_t h, w;
    cin >> h >> w;
    h -= 1;
    w -= 1;
    row[h] += 1;
    column[w] += 1;
    targets.insert({h, w});
  }
  uint64_t maximumRow = *max_element(row.begin(), row.end());
  uint64_t maximumColumn = *max_element(column.begin(), column.end());
  vector<uint64_t> maximumRows;
  vector<uint64_t> maximumColumns;
  for (uint64_t h = 0; h < H; ++h) {
    if (row[h] == maximumRow) {
      maximumRows.push_back(h);
    }
  }
  for (uint64_t w = 0; w < W; ++w) {
    if (column[w] == maximumColumn) {
      maximumColumns.push_back(w);
    }
  }
  uint64_t candidatePairs = static_cast<uint64_t>(maximumRows.size()) *
                           static_cast<uint64_t>(maximumColumns.size());
  if(candidatePairs > M) {
    cout << maximumRow + maximumColumn << endl;
    return 0;
  }
  for(uint64_t h : maximumRows) {
    for(uint64_t w : maximumColumns) {
      if(targets.find({h, w}) == targets.end()) {
        cout << maximumRow + maximumColumn << endl;
        return 0;
      }
    }
  }
  cout << maximumRow + maximumColumn - 1 << endl;
  return 0;
}
