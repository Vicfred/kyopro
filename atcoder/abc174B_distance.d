// vicfred
// https://atcoder.jp/contests/abc174/tasks/abc174_b
// math, implementation
import std.algorithm;
import std.array;
import std.conv;
import std.stdio;
import std.string;

void main() {
    long N, D;
    readf("%s %s\n", &N, &D);

    long ans = 0;
    foreach(_; 0..N) {
        long x, y;
        readf("%s %s\n", &x, &y);

        if(x*x + y*y <= D*D)
            ans += 1;
    }

    ans.writeln;
}

