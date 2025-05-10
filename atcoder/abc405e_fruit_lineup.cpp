// vicfred
// https://atcoder.jp/contests/abc405/tasks/abc405_e
// math
#include <cstdint>
#include <iostream>
#include <vector>
using namespace std;

const int64_t MOD = 998244353;

int64_t modpow(int64_t a) {
  int64_t r = 1, x = a;
  int64_t e = MOD - 2;
  while (e) {
    if (e % 2 == 1) {
      r = (r * x) % MOD;
    }
    x = (x * x) % MOD;
    e /= 2;
  }
  return r;
}

int64_t CnK(const int64_t n, const int64_t k, const vector<int64_t> &fac,
            const vector<int64_t> &ifac) {
  if (k < 0 or k > n) {
    return 0;
  }
  return fac[n] * ifac[k] % MOD * ifac[n - k] % MOD;
}

int main() {
  int64_t A, B, C, D;
  cin >> A >> B >> C >> D;
  int64_t N = A + B + C + D;
  vector<int64_t> fac(N + 1), ifac(N + 1);
  fac[0] = 1;
  for (int64_t i = 1; i <= N; ++i) {
    fac[i] = fac[i - 1] * i % MOD;
  }
  ifac[N] = modpow(fac[N]);
  for (int64_t i = N; i > 0; --i) {
    ifac[i - 1] = ifac[i] * i % MOD;
  }
  int64_t ans = 0LL;
  for (int64_t i = 0; i <= B; ++i) {
    int64_t seg1 = CnK(A + i - 1, i, fac, ifac);
    int64_t rest = CnK((B - i) + (C + D), C, fac, ifac);
    ans = (ans + seg1 * rest) % MOD;
  }
  cout << ans << endl;
  return 0;
}
