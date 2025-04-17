// vicfred
// https://atcoder.jp/contests/abc174/tasks/abc174_e
// binary search
import std.algorithm;
import std.array;
import std.conv;
import std.stdio;
import std.string;

long n, k;
long[] a;

bool check(long x) {
    long cuts = 0;
    for(long i = 0; i < n; i++)
        cuts += (a[i] - 1)/x;
    return cuts <= k;
}

void main() {
    readf("%s %s\n", &n, &k);

    a = readln.split.map!(to!long).array;

    long left = 0;
    long right = 10^^9+1;

    while(right - left > 1) {
        const long mid = (left + right)/2;
        if(check(mid)) right = mid;
        else left = mid;
    }

    right.writeln;
}

