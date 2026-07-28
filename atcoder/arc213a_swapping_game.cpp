// vicfred
// https://atcoder.jp/contests/arc213/tasks/arc213_a
// dynamic programming, permutations, inversion counting
#include <cstdint>
#include <iostream>
#include <vector>

using namespace std;

int64_t inversionDistance(const vector<int64_t> &inverseP,
                          const vector<int64_t> &q) {
  int64_t L = static_cast<int64_t>(q.size());
  int64_t inversions = 0;

  for (int64_t i = 0; i < L; ++i) {
    for (int64_t j = i + 1; j < L; ++j) {
      if (inverseP[q[i]] > inverseP[q[j]]) {
        inversions += 1;
      }
    }
  }

  return inversions;
}

int main() {
  int64_t N, L;
  cin >> N >> L;

  vector<int64_t> C(N + 1);
  vector<vector<int64_t>> P(N + 1, vector<int64_t>(L));
  vector<vector<int64_t>> inverseP(N + 1, vector<int64_t>(L + 1));

  for (int64_t value = 1; value <= L; ++value) {
    P[0][value - 1] = value;
    inverseP[0][value] = value - 1;
  }

  for (int64_t i = 1; i <= N; ++i) {
    cin >> C[i];

    for (int64_t j = 0; j < L; ++j) {
      cin >> P[i][j];
      inverseP[i][P[i][j]] = j;
    }
  }

  if (L == 1) {
    int64_t answer = 0;

    for (int64_t i = 1; i <= N; ++i) {
      answer += C[i];
    }

    cout << answer << endl;
    return 0;
  }

  int64_t D = L * (L - 1) / 2;

  vector<int64_t> dp(N + 1, -1);
  dp[0] = 0;

  int64_t answer = 0;

  for (int64_t i = 1; i <= N; ++i) {
    int64_t first = max<int64_t>(0, i - 2 * D + 1);

    for (int64_t j = first; j < i; ++j) {
      if (dp[j] == -1) {
        continue;
      }

      int64_t distance = inversionDistance(inverseP[j], P[i]);

      if (distance <= i - j) {
        dp[i] = max(dp[i], dp[j] + C[i]);
      }
    }

    answer = max(answer, dp[i]);
  }

  cout << answer << endl;
  return 0;
}
