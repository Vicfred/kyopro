// vicfred
// https://codeforces.com/contest/1469/problem/A
// 
import std.algorithm;
import std.array;
import std.container;
import std.conv;
import std.stdio;
import std.string;

void main() {
    int t = readln.chomp.to!int;

while(t--) {
    string s = readln.strip;

    if(s[0] == ')' || s[$-1] == '(' || s.length % 2 == 1)
        "NO".writeln;
    else
        "YES".writeln;
}
}

