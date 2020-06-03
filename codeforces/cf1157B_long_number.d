// https://codeforces.com/problemset/problem/1157/B
// greedy
import std.algorithm;
import std.array;
import std.conv;
import std.stdio;
import std.string;

void main() {
    int n = readln.chomp.to!int;

    string a = readln.chomp;

    int[] f = [-1];
    f ~= readln.split.map!(to!int).array;

    int idx = 0;

    while(idx < n && f[a[idx]-'0'] <= a[idx]-'0') {
        a[idx].write;
        idx += 1;
    }

    // find first increase
    while(idx < n && f[a[idx]-'0'] >= a[idx]-'0') {
        f[a[idx]-'0'].write;
        idx += 1;
    }

    // stop when the first decrease is found
    while(idx < n) {
        a[idx].write;
        idx += 1;
    }

    writeln;
}

