// vicfred
// https://codeforces.com/contest/1541/problem/B
// sorting, math
import std.algorithm;
import std.array;
import std.conv;
import std.stdio;
import std.string;

void main() {
    int t = readln.chomp.to!int;

while(t--) {
    int n = readln.chomp.to!int;
    long[] a = readln.split.map!(to!long).array;
    int[long] index;
    index[a[i - 1]] = i;
    for(int i = 1; i <= n; ++i) {
        index[a[i - 1]] = i;
    }
    a.sort;
    long count = 0L;
    for(int i = 0; i < n; ++i) {
        for(int j = i + 1; j < n; ++j) {
            if(a[i] * a[j] > n * 2) {
                break;
            }
            if(a[i] * a[j] == index[a[i]] + index[a[j]]) {
                count += 1L;
            }
        }
    }
    count.writeln;
}
}
