// vicfred
// https://codeforces.com/contest/1437/problem/C
// 
import std.algorithm;
import std.array;
import std.conv;
import std.math;
import std.stdio;
import std.string;

void main() {
    int q = readln.chomp.to!int;

    int n;
    int[] t;
    while(q--) {
        n = readln.chomp.to!int;
        t = readln.split.map!(to!int).array;

        t = t.map!(x => x - 1).array;

        t.sort;

        // dp
        // number of dishes
        // at time t
        int[][] dp = new int[][](n + 1, 2*n);
        for(int i = 0; i < n + 1; i++) {
            for(int j = 0; j < 2*n; j++) {
                dp[i][j] = int.max;
            }
        }

        dp[0][0] = 0L;
        for(int i = 0; i < n + 1; i++) {
            for(int j = 0; j + 1 < 2*n; j++) {
                if(dp[i][j] < int.max) {
                    // take the dish
                    if(i + 1 <= n)
                        dp[i + 1][j + 1] = min(dp[i + 1][j + 1], dp[i][j] + abs(t[i] - j));
                    // dont take the dish and move to the next minute
                    dp[i][j + 1] = min(dp[i][j], dp[i][j + 1]);
                }
            }
        }

        dp[n][2 * n - 1].writeln;
    }
}

