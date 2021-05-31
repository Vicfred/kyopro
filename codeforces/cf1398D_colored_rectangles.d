// Vicfred
// https://codeforces.com/contest/1398/problem/D
// dynamic programming
import std.algorithm;
import std.array;
import std.conv;
import std.stdio;
import std.string;

void main() {
    uint R, G, B;
    readf("%s %s %s", &R, &G, &B);
    readln;

    long[] r = readln.split.map!(to!long).array;
    long[] g = readln.split.map!(to!long).array;
    long[] b = readln.split.map!(to!long).array;

    r.sort!("a > b");
    g.sort!("a > b");
    b.sort!("a > b");

    long[][][] dp = new long[][][](R+1, G+1, B+1);

    long ans = long.min;
    for(int i = 0; i <= R; i++) {
        for(int j = 0; j <= G; j++) {
            for(int k = 0; k <= B; k++) {
                if(i < R && j < G)
                    dp[i + 1][j + 1][k] = max(dp[i + 1][j + 1][k], dp[i][j][k] + r[i] * g[j]);
                if(i < R && k < B)
                    dp[i + 1][j][k + 1] = max(dp[i + 1][j][k + 1], dp[i][j][k] + r[i] * b[k]);
                if(j < G && k < B)
                    dp[i][j + 1][k + 1] = max(dp[i][j + 1][k + 1], dp[i][j][k] + g[j] * b[k]);
                ans = max(ans, dp[i][j][k]);
            }
        }
    }
    ans.writeln;
}

