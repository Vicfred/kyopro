// Vicfred
// https://codeforces.com/contest/1538/problem/A
// greedy
import std.algorithm;
import std.array;
import std.conv;
import std.stdio;
import std.string;

int abs(int x) {
    return x > 0 ? x : -x;
}

void main() {
    int t = readln.chomp.to!int;

while(t--) {
    int n = readln.chomp.to!int;
    int[] a = readln.split.map!(to!int).array;

    int maxima = a.maxElement;
    int minima = a.minElement;
    int left = 0;
    int right;
    for(int i = 0; i < n; ++i) {
        left += 1;
        if(a[i] == maxima || a[i] == minima) {
            break;
        }
    }
    for(int i = n - 1; i >= 0; --i) {
        right += 1;
        if(a[i] == maxima || a[i] == minima) {
            break;
        }
    }
    int between = abs(left - n + right - 1);
    int[] ans = [left, right, between];
    ans.sort;
    (ans[0] + ans[1]).writeln;
}
}
