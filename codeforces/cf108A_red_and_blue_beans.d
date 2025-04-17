// vicfred
// https://codeforces.com/contest/1519/problem/A
// greedy
import std.algorithm;
import std.array;
import std.conv;
import std.stdio;
import std.string;

void main() {
    int t = readln.chomp.to!int;

while(t--) {
    long r, b, d;
    readf("%s %s %s\n", &r, &b, &d);
    if(r > b)
        swap(r,b);
    if(b <= r*(d + 1))
        "YES".writeln;
    else
        "NO".writeln;
}
}
