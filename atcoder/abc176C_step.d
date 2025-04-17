// vicfred
// https://atcoder.jp/contests/abc176/tasks/abc176_c
// greedy
import std.algorithm;
import std.array;
import std.conv;
import std.stdio;
import std.string;

void main() {
    long n = readln.chomp.to!long;
    long[] a = readln.split.map!(to!long).array;

    long last = a[0];
    long ans = 0;

    for(int i = 1; i < n; i++)
        if(a[i] < last)
            ans += last - a[i];
        else
            last = a[i];

    ans.writeln;
}

