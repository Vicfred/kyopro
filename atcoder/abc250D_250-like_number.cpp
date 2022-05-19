// uninhm
// https://atcoder.jp/contests/abc250/tasks/abc250_d
// sieve, semi-brute force

#include <iostream>

#define ll long long
#define PRIMES_UPTO_MAX 1000000
#define PRIMES_N_MAX 300000

ll *gen_primes(ll n, ll *primes) {
  static bool sieve[PRIMES_UPTO_MAX];
  sieve[0] = sieve[1] = true;
  ll i = 2;
  ll j = 0;
  while (i < n) {
    if (sieve[i]) {
      i++;
      continue;
    }
    primes[j++] = i;
    for (ll k = i * i; k < n; k += i)
      sieve[k] = true;
    i++;
  }
  return primes + j;
}

int main() {
  ll n;
  std::cin >> n;
  static ll primes[PRIMES_N_MAX];

  // it could be better to calulate primes up to cbrt(n)
  ll *primes_end = gen_primes(PRIMES_UPTO_MAX, primes);

  ll ans = 0;
  for (ll *it = primes; it != primes_end; it++) {
    ll q = *it;
    ll q_cb = q * q * q;
    if (q_cb > n)
      break;

    // it would be better to binary search the limit
    for (ll *it2 = primes; it2 != primes_end && *it2 < q; it2++) {
      ll p = *it2;
      if (p * q_cb > n)
        break;
      ans++;
    }
  }
  std::cout << ans << std::endl;
}
