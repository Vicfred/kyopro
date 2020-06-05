// Vicfred
// https://atcoder.jp/contests/abc156/tasks/abc156_d
// math
import std.algorithm;
import std.stdio;
long mod = 10^^9+7;
const long maxn = 10^^6;

long[maxn+1] fac;
long[maxn+1] inv;
long[maxn+1] finv;

long C(long n, long k, long m) {
    if(n < 0 || n < k) return 0L;
    return (fac[n]%m * finv[k]%m * finv[n-k]%m)%m;
}

long H(long n, long k, long m) {
    if(n < 0 || k < 0) return 0L;
    return C(n+k-1, k, m);
}

void main() {
    long n, k;

    fac[0] = fac[1] = 1;
    finv[0] = finv[1] = 1;
    inv[1] = 1;

    for(long i = 2; i <= maxn; ++i) {
        fac[i] = fac[i-1]*i%mod;
        inv[i] = (mod - (mod/i) * inv[mod%i] % mod)%mod;
        finv[i] = finv[i-1]*inv[i]%mod;
    }

    readf("%s %s\n", &n, &k);

    long ans = 0;
    for(int i = 0; i < min(n, k+1); ++i) {
        ans += C(n, i, mod)*H(n-i, i, mod)%mod;
        ans %= mod;
    }

    ans.writeln;
}

