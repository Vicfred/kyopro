// vicfred
// https://atcoder.jp/contests/abc389/tasks/abc389_c
// cumulative sum
#include <cstdint>
#include <iostream>
#include <vector>

using namespace std;

int main() {
  int64_t q;
  cin >> q;
  vector<int64_t> snakes;
  int64_t head = 0;
  int64_t gone = 0;
  for(int i = 0; i < q; ++i) {
    int64_t t;
    cin >> t;
    if(t == 1) {
      int64_t l;
      cin >> l;
      snakes.push_back(head);
      head += l;
    } else if(t == 2) {
      gone += 1;
    } else {
      int64_t k;
      cin >> k;
      k -= 1;
      cout << snakes[gone + k] - snakes[gone] << endl;
    }
  }
  return 0;
}
