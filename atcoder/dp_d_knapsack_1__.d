// vicfred
// https://atcoder.jp/contests/dp/tasks/dp_d
// dynamic programming
import std.algorithm;
import std.stdio;

void main() {
    int N, W;
    readf("%s %s\n", &N, &W);

    long[] dp = new long[W+1];

    long w, v;
    foreach(_; 0..N) {
        readf("%s %s\n", &w, &v);
        for(int i = W; i >= w; --i)
            dp[i] = max(dp[i], dp[i - w] + v);
    }

    dp[W].writeln;
}

