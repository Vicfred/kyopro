// vicfred
// https://atcoder.jp/contests/arc127/tasks/arc127_a
// dynamic programming
#include <array>
#include <cstdint>
#include <iostream>
#include <string>
#include <vector>

using namespace std;

int main() {
  string S;
  cin >> S;

  int64_t L = static_cast<int64_t>(S.size());

  // dp[i][s][p][k] counts prefixes with:
  // i: number of digits chosen, including padding.
  // s: 0 = equal to N's prefix, 1 = already smaller.
  // p: 0 = unstarted, 1 = running, 2 = finished.
  // k: number of leading ones counted so far.
  vector<array<array<vector<int64_t>, 3>, 2>> dp(L + 1);
  for (auto &layer : dp) {
    for (auto &status : layer) {
      for (auto &counts : status) {
        // Unreachable states have zero ways.
        counts.resize(L + 1);
      }
    }
  }

  // One empty prefix: equal, unstarted, no ones.
  dp[0][0][0][0] = 1;

  // Layer i pushes contributions to layer i + 1.
  // Increasing i ensures source counts are complete.
  for (int64_t i = 0; i <= L - 1; ++i) {
    int64_t digit = S[i] - '0';
    for (int64_t s = 0; s <= 1; ++s) {
      for (int64_t p = 0; p <= 2; ++p) {
        for (int64_t k = 0; k <= L; ++k) {
          // Smaller prefixes may use any next digit.
          int64_t limit = s ? 9 : digit;
          for (int64_t d = 0; d <= limit; ++d) {
            // Skip impossible states before indexing k_.
            // Reachable states have k <= i < L.
            if (dp[i][s][p][k] == 0) {
              continue;
            }

            // Once smaller, the prefix stays smaller.
            int64_t s_ = s | (d < digit);

            // A finished run keeps its phase and count.
            int64_t p_ = p;
            int64_t k_ = k;
            if (p == 0) {
              if (d == 0) {
                // Padding zeros do not start the number.
                p_ = 0;
                k_ = 0;
              } else if (d == 1) {
                // The first actual digit starts the run.
                p_ = 1;
                k_ = 1;
              } else {
                // Starting with 2..9 gives no leading ones.
                p_ = 2;
                k_ = 0;
              }
            } else if (p == 1) {
              if (d == 1) {
                // Another consecutive leading one.
                p_ = 1;
                k_ = k + 1;
              } else {
                // The run ends and can never restart.
                p_ = 2;
                k_ = k;
              }
            }

            // Each source prefix extends once with d.
            dp[i + 1][s_][p_][k_] += dp[i][s][p][k];
          }
        }
      }
    }
  }

  // Each completed number contributes its k leading ones.
  // Include both equal and smaller numbers.
  // The all-zero representation contributes zero.
  int64_t answer = 0;
  for (int64_t s = 0; s <= 1; ++s) {
    for (int64_t p = 0; p <= 2; ++p) {
      for (int64_t k = 0; k <= L; ++k) {
        answer += k * dp[L][s][p][k];
      }
    }
  }

  cout << answer << endl;

  return 0;
}
