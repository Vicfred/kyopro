// vicfred
// https://atcoder.jp/contests/abc401/tasks/abc401_c
// cumulative sum
#include <iostream>
#include <vector>

using namespace std;

int main() {
  const long long int MOD = 1000000000L;
  long long int n, k;
  cin >> n >> k;
  long long int s = k;
  vector<long long int> a(n + 1, 1LL);
  for(long long int i = k; i < n + 1; ++i) {
    a[i] = s;
    s -= a[i-k];
    s += a[i];
    s += MOD;
    s %= MOD;
  }
  cout << a[n] << endl;
  return 0;
}
