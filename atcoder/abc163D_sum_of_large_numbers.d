// Vicfred
// https://atcoder.jp/contests/abc163/tasks/abc163_d
// math
import std.stdio;

long ways(long k, long n) {
    long minima = k*(k-1)/2;
    long maxima = minima + k*(n-k+1);
    return maxima - minima + 1;
}

void main() {
    long n, k;
    readf("%s %s\n", &n, &k);

    long mod = 10^^9+7;

    long answer = 0;
    for(long i = k; i <= n+1; i++)
        answer = (answer+ways(i, n))%mod;

    answer %= mod;

    answer.writeln;
}

