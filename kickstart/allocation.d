// vicfred
// https://codingcompetitions.withgoogle.com/kickstart/round/000000000019ffc7/00000000001d3f56
// greedy
import std.algorithm;
import std.array;
import std.conv;
import std.stdio;
import std.string;

void main() {
    int t = readln.chomp.to!int;

    for(int kase = 1; kase <= t; kase++) {
        int n, b;
        readf("%s %s\n", &n, &b);

        int[] a = readln.split.map!(to!int).array;
        a.sort;

        int ans = 0;
        while(true) {
            if(ans >= n) break;
            if(b < a[ans]) break;
            b -= a[ans++];
        }
        writefln("Case #%s: %s", kase, ans);
    }
}

