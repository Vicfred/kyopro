// Vicfred
// https://atcoder.jp/contests/abc156/tasks/abc156_d
// math
import std.stdio;

long binpow(long a, long b, long m) {
    a %= m;
    long res = 1L;
    while(b > 0L) {
        if(b&1)
            res = res * a % m;
        a = a * a % m;
        b >>= 1;
    }
    return res;
}

long binomial(long n, long k, long m) {
    long x, y;
    x = y = 1;
    for(int i = 0; i < k; i++) {
        x *= n-i;
        x %= m;
        y *= i+1;
        y %= m;
    }
    y = binpow(y, m-2, m);
    return (x*y)%m;
}

void main() {
    long mod = 10^^9+7;
    long n, a, b;
    readf("%s %s %s\n", &n, &a, &b);
    writeln((binpow(2L,n,mod) - binomial(n,a,mod) - binomial(n,b,mod) - 1L + 3L*mod)%mod);
}

