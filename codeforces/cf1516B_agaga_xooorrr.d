// vicfred
// https://codeforces.com/contest/1516/problem/B
// brute force, greedy
import std.algorithm;
import std.array;
import std.conv;
import std.stdio;
import std.string;

void main() {
    int t = readln.chomp.to!int;

while(t--) {
    int n = readln.chomp.to!int;
    int[] a = readln.split.map!(to!int).array;
    a = 0 ~ a;

    int[] cum = new int[n + 1];
    for(int i = 1; i <= n; ++i) {
        cum[i] = cum[i - 1] ^ a[i];
    }

    bool found = !cum[n];
    for(int i = 1; i <= n; ++i) {
        for(int j = i + 1; j < n; ++j) {
            found |= (cum[i] == (cum[j]^cum[i]) &&
                      cum[i] == (cum[n]^cum[j]));
        }
    }
    if(found)
        "YES".writeln;
    else
        "NO".writeln;
}
}

