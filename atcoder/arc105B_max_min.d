// Vicfred
// https://atcoder.jp/contests/arc105/tasks/arc105_b
// math
import std.algorithm;
import std.array;
import std.conv;
import std.stdio;
import std.string;

long gcd(long a, long b) {
    return b == 0 ? a : gcd(b, a%b);
}

void main() {
    long n = readln.chomp.to!long;
    long[] a = readln.split.map!(to!long).array;

    long ans = a[0];
    foreach(number; a) {
        ans = gcd(ans, number);
    }

    ans.writeln;
}

