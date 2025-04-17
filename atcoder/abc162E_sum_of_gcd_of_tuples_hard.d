// uninhm &(* vicfred
// https://atcoder.jp/contests/abc162/tasks/abc162_e
// math
import std.algorithm;
import std.stdio;

long binpow(long a, long b, long m) {
    a %= m;
    long ans = 1;
    while(b > 0) {
        if(b & 1)
            ans = (ans * a)%m;
        a = (a * a)%m;
        b >>= 1;
    }
    return ans;
}

void main() {
    long n, k;
    readf("%s %s\n", &n, &k);

    const long mod = 10^^9+7;
    long[] GCD = new long[k+1];

    for(long x = k; x > 0; x--)
        GCD[x] = binpow(k/x, n, mod);

    for(long x = k; x > 0; x--) {
        for(long j = 2*x; j <= k; j += x) {
            GCD[x] -= GCD[j];
            GCD[x] %= mod;
        }
    }

    long ans = 0;
    for(int x = 1; x <= k; x++) {
        ans += GCD[x]*x;
        ans %= mod;
    }

    writefln("%s", ans);
}

