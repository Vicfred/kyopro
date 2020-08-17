// Vicfred
// https://atcoder.jp/contests/abc175/tasks/abc175_e
// 
import std.algorithm;
import std.array;
import std.conv;
import std.stdio;
import std.string;

void main() {
    long R, C, K;
    readf("%s %s %s", &R, &C, &K);
    readln;

    long[][] v = new long[][](R+1, C+1);
    long[][][] dp = new long[][][](R+1, C+1, 4);

    for(int i = 0; i < K; ++i) {
        int x, y, w;
        readf("%s %s %s", &x, &y, &w);
        readln;
        v[x][y] = w;
    }

    for(int i = 1; i <= R; ++i) {
        for(int j = 1; j <= C; ++j) {
            long newrow = max(
                    max(dp[i-1][j][0], dp[i-1][j][1]),
                    max(dp[i-1][j][2], dp[i-1][j][3]),
                    );
            dp[i][j][0] = max(dp[i][j-1][0], newrow);
            dp[i][j][1] = max(dp[i][j-1][1], max(newrow, dp[i][j-1][0]) + v[i][j]);
            dp[i][j][2] = max(dp[i][j-1][2], dp[i][j-1][1] + v[i][j]);
            dp[i][j][3] = max(dp[i][j-1][3], dp[i][j-1][2] + v[i][j]);
        }
    }

    long ans = long.min;
    for(int i = 0; i <= 3; ++i)
        ans = max(ans, dp[R][C][i]);

    ans.writeln;
}

