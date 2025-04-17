// vicfred
// https://codeforces.com/contest/1519/problem/B
// math
import std.algorithm;
import std.array;
import std.conv;
import std.stdio;
import std.string;

void main() {
    int t = readln.chomp.to!int;

while(t--) {
    int n, m, k;
    readf("%s %s %s\n", &n, &m, &k);
    if(k == n * m - 1)
        "YES".writeln;
    else
        "NO".writeln;
}
}
