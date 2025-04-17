// vicfred
// https://codeforces.com/contest/1535/problem/B
// greedy
import std.algorithm;
import std.array;
import std.conv;
import std.stdio;
import std.string;

long gcd(long a, long b) {
    return b == 0L ? a : gcd(b, a%b);
}

void main() {
    int t = readln.chomp.to!int;

while(t--) {
    int n = readln.chomp.to!int;
    long[] a = readln.split.map!(to!long).array;

    long[] b;
    foreach(item; a) {
        if(item % 2 == 0)
            b = b ~ item;
    }
    foreach(item; a) {
        if(item % 2 == 1)
            b = b ~ item;
    }

    int ans = 0;
    for(int i = 0; i < n; ++i)
        for(int j = i + 1; j < n; ++j)
            if(gcd(b[i],2 * b[j]) > 1)
                ans += 1;
    ans.writeln;
}
}
