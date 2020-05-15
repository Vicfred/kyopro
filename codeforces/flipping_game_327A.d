// https://codeforces.com/problemset/problem/327/A
// brute force
import std.algorithm;
import std.stdio;
import std.array;
import std.conv;
import std.string;

void main() {
    int n = readln.chomp.to!int;
    int[] a = readln.split.map!(x => x.to!int).array;
    int maxima = 0;
    for(int i = 0; i < n; i++) {
        for(int j = 0; j <= i; j++) {
            int ones = 0;
            for(int idx = 0; idx < n; idx++) {
                if(idx >= j && idx <= i)
                    ones += 1-a[idx];
                else
                    ones += a[idx];
            }
            maxima = max(maxima,ones);
        }
    }
    maxima.writeln;
}

