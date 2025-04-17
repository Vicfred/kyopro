// vicfred
// https://atcoder.jp/contests/dp/tasks/dp_d
// dynamic programming
import std.algorithm;
import std.array;
import std.conv;
import std.math;
import std.stdio;
import std.string;

void main() {
    long N, W;
    readf("%s %s\n", &N, &W);

    long[] ws = new long[N];
    long[] vs = new long[N];

    long[][] dp = new long[][](N+1, W+1);

    foreach(i; 0..N)
        readf("%s %s\n", &ws[i], &vs[i]);

    for(int i = 1; i <= N; i++) {
        for(int j = 1; j <= W; j++) {
            if(ws[i-1] <= j)
                dp[i][j] = max(dp[i-1][j],
                        dp[i-1][j-ws[i-1]] + vs[i-1]);
            else
                dp[i][j] = dp[i-1][j];
        }
    }

    dp[N][W].writeln;
}

