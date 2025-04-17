// vicfred
// https://codeforces.com/contest/1529/problem/B
// greedy
import std.algorithm;
import std.array;
import std.conv;
import std.math;
import std.stdio;
import std.string;

void main() {
    int t = readln.chomp.to!int;

while(t--) {
    int n = readln.chomp.to!int;
    int[] a = readln.split.map!(to!int).array;
    int minima = int.max;
    int ans = 1;
    a.sort;
    for(int i = 1; i < n; ++i) {
        minima = min(minima, a[i] - a[i - 1]);
        if(a[i] <= 0) {
            ans += 1;
        } else {
            if(a[i] <= minima) {
                ans += 1;
            }
            break;
        }
    }
    ans.writeln;
}
}
