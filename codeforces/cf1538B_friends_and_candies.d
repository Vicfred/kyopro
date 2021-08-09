// Vicfred
// https://codeforces.com/contest/1538/problem/B
// basic math, greedy
import std.algorithm;
import std.array;
import std.conv;
import std.stdio;
import std.string;

void main() {
    long t = readln.chomp.to!long;

while(t--) {
    int n = readln.chomp.to!int;
    long[] a = readln.split.map!(to!long).array;

    long total = a.sum();
    
    if(total % n != 0) {
        "-1".writeln;
        continue;
    }

    long candies = total / n;
    long ans = 0L;
    for(int i = 0; i < n; ++i) {
        if(a[i] > candies)
            ans += 1;
    }
    ans.writeln;
}
}
