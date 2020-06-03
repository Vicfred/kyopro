// https://codeforces.com/problemset/problem/996/A
// math
import std.algorithm;
import std.conv;
import std.stdio;
import std.string;

void main() {
    int n = readln.chomp.to!int;
    int ans = 0;
    ans += n/100;
    n -= (n/100)*100;
    ans += n/20;
    n -= (n/20)*20;
    ans += n/10;
    n -= (n/10)*10;
    ans += n/5;
    n -= (n/5)*5;
    ans += n;
    ans.writeln;
}

