// vicfred
// https://codeforces.com/contest/1535/problem/A
// implementation
import std.algorithm;
import std.array;
import std.conv;
import std.stdio;
import std.string;

void main() {
    int t = readln.chomp.to!int;

while(t--) {
    int[] s = readln.split.map!(to!int).array;

    int winner_a = max(s[0],s[1]);
    int winner_b = max(s[2],s[3]);

    if(winner_a > winner_b)
        swap(winner_a, winner_b);

    s.sort;
    s = [s[2],s[3]];

    if(winner_a == s[0] && winner_b == s[1])
        "YES".writeln;
    else
        "NO".writeln;
}
}

