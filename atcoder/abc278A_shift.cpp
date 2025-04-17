// vicfred
// https://atcoder.jp/contests/abc278/tasks/abc278_a
// data structures
#include <iostream>
#include <deque>

using namespace std;

int main() {
  deque<int> q;
  int n, k;
  cin >> n >> k;
  for(int i = 0; i < n; ++i) {
    int item;
    cin >> item;
    q.push_back(item);
  }
  for(int i = 0; i < k; ++i) {
    q.pop_front();
    q.push_back(0);
  }
  for(int i = 0; i < n; ++i) {
    cout << q[i] << " ";
  } cout << endl;
  return 0;
}
