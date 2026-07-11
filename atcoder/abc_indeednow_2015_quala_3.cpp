// vicfred
// https://atcoder.jp/contests/indeednow-quala/tasks/indeednow_2015_quala_3
// binary search
#include <algorithm>
#include <cstdint>
#include <iostream>
#include <vector>

using namespace std;

int64_t howMany(int64_t x, const vector<int64_t> &s) {
  int64_t left, right;
  left = 0;
  right = s.size();
  while (left < right) {
    int64_t middle = left + (right - left) / 2;
    if (s[middle] >= x) {
      right = middle;
    } else {
      left = middle + 1;
    }
  }
  // cout << s.size() - left << " students" << endl;
  return s.size() - left;
}

int main() {
  int64_t N;
  cin >> N;
  // cout << N << endl;
  vector<int64_t> sx;
  for(int i = 0; i < N; ++i) {
    int64_t s;
    cin >> s;
    if(s == 0) {
      continue;
    }
    sx.push_back(s);
  }
  sort(begin(sx), end(sx));
  /*
  for(const auto& item : s) {
    cout << item << endl;
  }
  */
  int64_t Q;
  cin >> Q;
  // cout << Q << endl;
  int64_t k;
  for (int i = 0; i < Q; ++i) {
    cin >> k;
    // cout << k << endl;
    int64_t left, right;
    left = 0;
    right = 1000000 + 1;
    // cout << "k: " << k << endl;
    while(left < right) {
      int64_t middle = left + (right - left) / 2;
      // cout << "testing borderline x: " << middle << endl;
      if(howMany(middle, sx) <= k) {
        right = middle;
      } else {
        left = middle + 1;
      }
    }
    cout << left << endl;
  }
  return 0;
}
