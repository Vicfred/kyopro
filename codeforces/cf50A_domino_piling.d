// https://codeforces.com/problemset/problem/50/A
// simple math
import std.algorithm;
import std.conv;
import std.stdio;
import std.string;

void main() {
    (readln.chomp.split.map!(to!int).reduce!"a * b"/2).writeln;
}

