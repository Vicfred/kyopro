// vicfred
// https://atcoder.jp/contests/abc177/tasks/abc177_c
// math
import std.algorithm;
import std.array;
import std.conv;
import std.stdio;
import std.string;

void main() {
    const long mod = 10^^9+7;
    long n = readln.chomp.to!long;
    long[] a = readln.split.map!(to!long).array;

    long sum = 0;
    for(long i = 0; i < n; i++) {
        sum += a[i];
        sum %= mod;
    }


    long ans = 0;
    for(int i = 0; i < n; i++) {
        sum -= a[i];
        if(sum < 0) sum += mod;

        ans += a[i] * sum;
        ans %= mod;
    }

    ans.writeln;
}

