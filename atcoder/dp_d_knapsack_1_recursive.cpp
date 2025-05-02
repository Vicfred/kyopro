// vicfred
// https://atcoder.jp/contests/dp/tasks/dp_d
// dynamic programming
#include <algorithm>
#include <cstdint>
#include <iostream>
#include <vector>

using namespace std;

int64_t knapsack(int64_t N, int64_t W, const vector<int64_t> &w,
                 const vector<int64_t> &v, vector<vector<int64_t>> &memo) {
  int64_t &ans = memo[N][W];
  if (N == 0 or W == 0) {
    return 0;
  }
  if (ans != -1) {
    return ans;
  }
  int64_t pick = 0;
  if (w[N - 1] <= W) {
    pick = v[N - 1] + knapsack(N - 1, W - w[N - 1], w, v, memo);
  }
  int64_t notPick = knapsack(N - 1, W, w, v, memo);
  ans = max(pick, notPick);
  return ans;
}

int main() {
  int64_t N, W;
  cin >> N >> W;
  vector<int64_t> w(N), v(N);
  for (int i = 0; i < N; ++i) {
    cin >> w[i] >> v[i];
  }
  vector<vector<int64_t>> memo(N + 1, vector<int64_t>(W + 1, -1));
  cout << knapsack(N, W, w, v, memo) << endl;
  return 0;
}
