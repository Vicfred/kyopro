// Vicfred
// https://codeforces.com/contest/1430/problem/F
// dynamic programming
import std.algorithm;
import std.array;
import std.conv;
import std.stdio;
import std.string;

void main() {
    int n, k;
    readf("%s %s\n", &n, &k);

    long [] l = new long[n+5];
    long [] r = new long[n+5];
    long [] a = new long[n+5];

    foreach(i; 1..n+1)
        readf("%s %s %s\n", &l[i], &r[i], &a[i]);

    long[] dp = new long[n+5];

    for(int i = n; i >= 1; i--) {
        long remaining = a[i];

        if(r[i] == l[i + 1] && i != n)
            remaining += dp[i + 1];

        if(remaining > (r[i] - l[i] + 1)*k) {
            "-1".writeln;
            return;
        }
        
        dp[i] = max(0L, remaining - (r[i] - l[i])*k);
    }

    long sum = k;
    long ans = 0L;

    for(int i = 1; i <= n; ++i) {
        if(sum < dp[i]) {
            ans += sum;
            sum = k;
        }

        ans += a[i];
        sum = (sum - a[i])%k + k;
        sum %= k;
    }

    ans.writeln;

}

