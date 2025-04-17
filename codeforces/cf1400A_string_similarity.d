// vicfred
// https://codeforces.com/contest/1400/problem/A
// greedy
import std.conv;
import std.stdio;
import std.string;

void main() {
    int t = readln.chomp.to!int;
    while(t--) {
        int n = readln.chomp.to!int;
        string s = readln.strip;

        char[] ans;

        foreach(_; 0..n)
            ans ~= s[n-1];

        ans.writeln;
    }
}

