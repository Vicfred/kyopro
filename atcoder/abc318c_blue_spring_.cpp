// vicfred
// https://atcoder.jp/contests/adt_easy_20260821_2/tasks/abc318_c
// sorting
#include <algorithm>
#include <cstdint>
#include <functional>
#include <iostream>
#include <ranges>
#include <vector>

using namespace std;

int main() {
  int64_t N, D, P;
  cin >> N >> D >> P;

  vector<int64_t> fares(N);
  for (int64_t &f : fares) {
    cin >> f;
  }

  ranges::sort(fares, greater{});

  int64_t price = 0;

  for (auto group : fares | views::chunk(D)) {
    int64_t cost =
      ranges::fold_left(group, int64_t{0}, plus{});

    price += min(cost, P);
  }

  cout << price << endl;

  return 0;
}
