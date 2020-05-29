// Vicfred
// https://atcoder.jp/contests/abc160/tasks/abc160_d
// dynamic programming, bucket counting
import std.algorithm;
import std.math;
import std.stdio;

void main() {
    int n, x, y;
    readf("%s %s %s", &n, &x, &y);
    readln;

    int ans = 0;
    int[] dist = new int[n];

    for(int j = 1; j <= n; j++) {
        for(int i = 1; i < j; i++) {
            int minima = min(j-i, abs(y-j)+abs(x-i)+1);
            dist[minima] += 1;
        }
    }

    for(int i = 1; i <= n-1; i++)
        dist[i].writeln;
}

