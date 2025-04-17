// vicfred
// https://atcoder.jp/contests/abc160/tasks/abc160_c
// greedy
import std.algorithm;
import std.array;
import std.conv;
import std.stdio;

void main() {
    int k, n;
    readf("%s %s", &k, &n);
    readln;

    int[] a = readln.split.map!(to!int).array;

    int[] dist;

    for(long i = a.length-1; i > 0; i--)
        dist ~= a[i]-a[i-1];
    dist ~= k-a[$-1]+a[0];

    sort(dist);
    sum(dist[0..$-1]).writeln;
}

