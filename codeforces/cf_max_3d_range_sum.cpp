// Vicfred
// https://codeforces.com/group/WWgO08JwTh/contest/369508/problem/D
// dynamic programming, classical
#include <iostream>
#include <vector>
#include <climits>

using namespace std;

int main() {
  int n;
  cin >> n;

  vector<vector<vector<int>>> A(n, vector<vector<int>>(n, vector<int>(n)));
  for (int i = 0; i < n; ++i) {
    for (int j = 0; j < n; ++j) {
      for (int k = 0; k < n; ++k) {
        cin >> A[i][j][k];
      }
    }
  }
  for (int i = 0; i < n; ++i) {
    for (int j = 0; j < n; ++j) {
      for (int k = 0; k < n; ++k) {
        if (i > 0)
          A[i][j][k] += A[i - 1][j][k];
        if (j > 0)
          A[i][j][k] += A[i][j - 1][k];
        if (k > 0)
          A[i][j][k] += A[i][j][k - 1];
        if (i > 0 and j > 0)
          A[i][j][k] -= A[i - 1][j - 1][k];
        if (i > 0 and k > 0)
          A[i][j][k] -= A[i - 1][j][k - 1];
        if (j > 0 and k > 0)
          A[i][j][k] -= A[i][j - 1][k - 1];
        if (i > 0 and j > 0 and k > 0)
          A[i][j][k] += A[i - 1][j - 1][k - 1];
      }
    }
  }
  int maxSubRect = INT_MIN;
  for (int i = 0; i < n; ++i)
    for (int j = 0; j < n; ++j)
      for (int k = 0; k < n; ++k)
        for (int u = i; u < n; ++u)
          for (int v = j; v < n; ++v)
            for (int w = k; w < n; ++w) {
              int subRect = A[u][v][w];
              if (i > 0)
                subRect -= A[i - 1][v][w];
              if (j > 0)
                subRect -= A[u][j - 1][w];
              if (k > 0)
                subRect -= A[u][v][k - 1];
              if (i > 0 and j > 0)
                subRect += A[i - 1][j - 1][w];
              if (i > 0 and k > 0)
                subRect += A[i - 1][v][k - 1];
              if (j > 0 and k > 0)
                subRect += A[u][j - 1][k - 1];
              if (i > 0 and j > 0 and k > 0)
                subRect -= A[i - 1][j - 1][k - 1];
              maxSubRect = max(maxSubRect, subRect);
            }
  cout << maxSubRect << endl;
}
