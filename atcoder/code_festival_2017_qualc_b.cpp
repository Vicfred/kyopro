// vicfred
// https://atcoder.jp/contests/code-festival-2017-qualc/tasks/code_festival_2017_qualc_b
// brute force, BFS, enumeration

#include <cstdint>
#include <iostream>
#include <queue>
#include <vector>

using namespace std;

int main() {
  int64_t N;
  cin >> N;

  vector<int64_t> A(N);

  for (int64_t i = 0; i < N; ++i) {
    cin >> A[i];
  }

  queue<vector<int64_t>> q;
  q.push({});

  int64_t count = 0;

  while (!q.empty()) {
    vector<int64_t> u = q.front();
    q.pop();

    if (static_cast<int64_t>(u.size()) == N) {
      // The product is even iff at least one element is
      // even.
      bool hasEven = false;

      for (int64_t x : u) {
        if (x % 2 == 0) {
          hasEven = true;
          break;
        }
      }

      if (hasEven) {
        count += 1;
      }

      continue;
    }

    int64_t idx = static_cast<int64_t>(u.size());

    u.push_back(A[idx] - 1);
    q.push(u);
    u.pop_back();

    u.push_back(A[idx]);
    q.push(u);
    u.pop_back();

    u.push_back(A[idx] + 1);
    q.push(u);
  }

  cout << count << endl;

  return 0;
}
