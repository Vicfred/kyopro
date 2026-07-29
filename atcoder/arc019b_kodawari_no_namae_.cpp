// vicfred
// https://atcoder.jp/contests/arc019/tasks/arc019_2
// strings, palindromes, counting, case analysis, combinatorics, segment tree
#include <algorithm>
#include <cstdint>
#include <iostream>
#include <string>
#include <vector>

using namespace std;

struct SegmentTree {
  int64_t size;
  vector<int64_t> tree;

  SegmentTree(const vector<int64_t> &values) {
    size = 1;

    while (size < static_cast<int64_t>(values.size())) {
      size *= 2;
    }

    tree.assign(2 * size, 0);

    for (int64_t i = 0; i < static_cast<int64_t>(values.size()); ++i) {
      tree[size + i] = values[i];
    }

    for (int64_t i = size - 1; i >= 1; --i) {
      tree[i] = tree[2 * i] + tree[2 * i + 1];
    }
  }

  void update(int64_t index, int64_t value) {
    int64_t position = size + index;
    tree[position] = value;

    while (position > 1) {
      position /= 2;
      tree[position] = tree[2 * position] + tree[2 * position + 1];
    }
  }

  int64_t total() const { return tree[1]; }
};

int main() {
  string A;
  cin >> A;

  int64_t N = static_cast<int64_t>(A.size());
  vector<int64_t> mismatch(N / 2);

  for (int64_t i = 0; i < N / 2; ++i) {
    if (A[i] != A[N - 1 - i]) {
      mismatch[i] = 1;
    }
  }

  SegmentTree segmentTree(mismatch);
  int64_t answer = 0;

  for (int64_t i = 0; i < N; ++i) {
    int64_t j = N - 1 - i;

    if (i == j) {
      if (segmentTree.total() > 0) {
        answer += 25;
      }
      continue;
    }

    int64_t pairIndex = min(i, j);

    if (A[i] == A[j]) {
      segmentTree.update(pairIndex, 1);

      if (segmentTree.total() > 0) {
        answer += 25;
      }

      segmentTree.update(pairIndex, 0);
    } else {
      segmentTree.update(pairIndex, 0);

      if (segmentTree.total() > 0) {
        answer += 1;
      }

      segmentTree.update(pairIndex, 1);

      if (segmentTree.total() > 0) {
        answer += 24;
      }
    }
  }

  cout << answer << endl;
  return 0;
}
