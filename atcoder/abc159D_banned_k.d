// vicfred
// https://atcoder.jp/contests/abc159/tasks/abc159_a
// math
import std.algorithm;
import std.array;
import std.conv;
import std.stdio;
import std.string;

long gauss(long n) {
    return n*(n-1)/2;
}

void main() {
    long n = readln.chomp.to!long;
    long[] a = readln.split.map!(to!long).array;

    long[long] balls;
    foreach(ball; a) {
        if(ball in balls)
            balls[ball] += 1;
        else
            balls[ball] = 1;
    }

    long ways = 0;
    foreach(i; balls.keys)
        ways += gauss(balls[i]);

    for(int k = 0; k < n; k++) {
        long ans = ways-balls[a[k]]+1;
        ans.writeln;
    }
}

