// vicfred
// https://atcoder.jp/contests/abc360/tasks/abc360_c
// greedy, sorting, data structures
#include <iostream>
#include <map>
#include <set>
#include <vector>

using namespace std;

int main() {
  long long N;
  cin >> N;
  vector<long long> A(N), W(N);
  for(int i = 0; i < N; ++i) {
    cin >> A[i];
  }
  for(int i = 0; i < N; ++i) {
    cin >> W[i];
  }
  map<long long, multiset<long long>> candies;
  for(int i = 0; i < N; ++i) {
    candies[A[i]].insert(W[i]);
  }
  long long cost = 0LL;
  for(auto&[box, candy] : candies) {
    while(candy.size() > 1) {
      cost += *candy.begin();
      candy.erase(candy.begin());
    }
  }
  cout << cost << endl;
  return 0;
}
