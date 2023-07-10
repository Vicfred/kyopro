// Vicfred
// https://atcoder.jp/contests/abc309/tasks/abc309_c
// greedy, sorting
#include <algorithm>
#include <iostream>
#include <utility>
#include <vector>

using namespace std;

int main() {
  long long N, K;
  cin >> N >> K;
  vector<pair<long long, long long>> days(N);
  long long sum = 0LL;
  for (long long i = 0; i < N; ++i) {
    cin >> days[i].first >> days[i].second;
    sum += days[i].second;
  }
  sort(begin(days), end(days));
  long long day = 0LL;
  if(sum <= K) {
    cout << 1 << endl;
    return 0;
  }
  for (int i = 0; i < N; ++i) {
    sum -= days[i].second;
    day = days[i].first;
    if (sum <= K) {
      cout << day + 1 << endl;
      return 0;
    }
  }
  return 0;
}
