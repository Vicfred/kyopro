// vicfred
// https://atcoder.jp/contests/abc315/tasks/abc315_c
// sorting
#include <algorithm>
#include <functional>
#include <iostream>
#include <vector>
#include <utility>

using namespace std;

int main() {
  long long N;
  cin >> N;
  vector<pair<long long, long long>> ice_creams(N);
  for(long long i = 0; i < N; ++i) {
    int flavor, deliciousness;
    cin >> flavor >> deliciousness;
    ice_creams[i].first = deliciousness;
    ice_creams[i].second = flavor;
  }
  sort(begin(ice_creams), end(ice_creams), greater<pair<long long, long long>>());
  long long maxima = ice_creams[0].first;
  long long chosen = ice_creams[0].second;
  ice_creams.erase(begin(ice_creams));
  for(auto &[deliciousness, flavor] : ice_creams) {
    if(flavor == chosen) {
      deliciousness /= 2;
    }
  }
  sort(begin(ice_creams), end(ice_creams), greater<pair<long long, long long>>());
  maxima += ice_creams[0].first;
  cout << maxima << endl;
  return 0;
}
