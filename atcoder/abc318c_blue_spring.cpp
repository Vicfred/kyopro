// vicfred
// https://atcoder.jp/contests/adt_easy_20260821_2/tasks/abc318_c
// sorting, heap, data structures
#include <algorithm>
#include <cstdint>
#include <iostream>
#include <queue>
#include <ranges>

using namespace std;

int main() {
  int64_t N, D, P;
  cin >> N >> D >> P;

  priority_queue<int64_t> pq;

  for (auto _ : views::repeat(0, N)) {
    int64_t f;
    cin >> f;
    pq.push(f);
  }

  int64_t price = 0;

  while (!pq.empty()) {
    int64_t cost = 0;
    for (int64_t i = 0; i < D && !pq.empty(); ++i) {
      cost += pq.top();
      pq.pop();
    }
    price += min(cost, P);
  }

  cout << price << endl;

  return 0;
}
