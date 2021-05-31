// Vicfred
// https://codeforces.com/contest/1397/problem/B
// math
import std.algorithm;
import std.array;
import std.conv;
import std.math;
import std.stdio;
import std.string;

void main() {
    long n = readln.chomp.to!long;
    long[] a = readln.split.map!(to!long).array;

    if(n >= 35) {
        long ans = 0;
        foreach(x; a)
            ans += x - 1;
        ans.writeln;
        return;
    }

    a.sort;

    long ans = 10L^^14;
    for(long c = 1L; c <= 10^^9; c++) {
        long minima = 0L;

        for(int i = 0; i < n; i++)
            minima += abs(a[i] - c^^i);

        if(minima > ans)
            break;

        ans = min(ans,minima);
    }

    ans.writeln;
}

