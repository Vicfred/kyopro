// vicfred
// https://atcoder.jp/contests/adt_hard_20251106_1/tasks/abc415_e
// dynamic programming, grid, binary search
#include <algorithm>
#include <cstdint>
#include <iostream>
#include <vector>

using namespace std;

int main() {
  int64_t H, W;
  cin >> H >> W;

  vector<vector<int64_t>> A(H, vector<int64_t>(W));
  for (int64_t i = 0; i < H; ++i) {
    for (int64_t j = 0; j < W; ++j) {
      cin >> A[i][j];
    }
  }

  vector<int64_t> P(H + W - 1);
  int64_t totalFoodCost = 0;
  for (int64_t k = 0; k < H + W - 1; ++k) {
    cin >> P[k];
    totalFoodCost += P[k];
  }

  auto canFinish = [&](int64_t initialMoney) {
    vector<vector<int64_t>> dp(H, vector<int64_t>(W, -1));

    for (int64_t i = 0; i < H; ++i) {
      for (int64_t j = 0; j < W; ++j) {
        int64_t incomingMoney = -1;

        if (i == 0 && j == 0) {
          incomingMoney = initialMoney;
        } else {
          if (i > 0) {
            incomingMoney = max(incomingMoney, dp[i - 1][j]);
          }

          if (j > 0) {
            incomingMoney = max(incomingMoney, dp[i][j - 1]);
          }
        }

        if (incomingMoney < 0) {
          continue;
        }

        int64_t netChange = A[i][j] - P[i + j];
        int64_t remainingMoney = incomingMoney + netChange;

        if (remainingMoney >= 0) {
          dp[i][j] = remainingMoney;
        }
      }
    }

    return dp[H - 1][W - 1] >= 0;
  };

  int64_t low = -1;
  int64_t high = totalFoodCost;

  while (high - low > 1) {
    int64_t middle = low + (high - low) / 2;

    if (canFinish(middle)) {
      high = middle;
    } else {
      low = middle;
    }
  }

  cout << high << endl;
  return 0;
}
