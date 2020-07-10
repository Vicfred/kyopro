// Vicfred
// https://atcoder.jp/contests/dp/tasks/dp_d
// dynamic programming
import std.algorithm;
import std.array;
import std.conv;
import std.math;
import std.stdio;
import std.string;

long N, W;
long[] vs;
long[] ws;

long[][] dp;

long knapsack(long w, int idx) {
    if(idx > N) return 0;
    if(w <= 0) return 0;
    if(ws[idx] > w) return knapsack(w, idx+1);
    if(dp[w][idx] != -(1<<30)) return dp[w][idx];
    dp[w][idx] = max(
            knapsack(w-ws[idx], idx+1) + vs[idx],
            knapsack(w, idx+1)
            );
    return dp[w][idx];
}

void main() {
    readf("%d %d\n", &N, &W);

    ws = new long[N+1];
    vs = new long[N+1];

    dp = new long[][](10^^5+5, 105);

    for(int i = 0; i < (10^^5+5); i++)
        for(int j = 0; j < 105; j++)
            dp[i][j] = -(1<<30);

    foreach(i; 1..N+1)
        readf("%d %d\n", &ws[i], &vs[i]);

    const long ans = knapsack(W, 1);
    ans.writeln;
}

