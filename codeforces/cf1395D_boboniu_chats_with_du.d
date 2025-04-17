// vicfred
// https://codeforces.com/contest/1395/problem/D
// implementation, greedy, sorting
import std.algorithm;
import std.array;
import std.conv;
import std.stdio;
import std.string;

void main() {
    long n, d, m;
    readf("%s %s %s", &n, &d, &m);
    readln;

    long[] a = readln.split.map!(to!long).array;

    long[] good, bad;

    foreach(item; a)
        if(item > m)
            good ~= item;
        else
            bad ~= item;

    long x = good.length;
    long y = bad.length;

    good ~= 0;
    bad ~= 0;

    good.sort;
    good.reverse;
    bad.sort;
    bad.reverse;

    for(int i = 1; i <= x; i++)
        good[i] += good[i-1];

    for(int i = 1; i <= y; i++)
        bad[i] += bad[i-1];

    good = 0~good;
    bad = 0~bad;

    long ans = bad[$-1];
    long remain = n - 1;
    for(int i = 1; i <= x; i++) {
        if(remain < 0)
            break;
        ans = max(ans, good[i] + bad[min(remain, y)]);
        remain -= d + 1;
    }

    ans.writeln;
}

