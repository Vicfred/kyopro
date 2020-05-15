// https://codeforces.com/problemset/problem/71/A
// basic string manipulation
import std.stdio;
import std.string;
import std.conv;

void main() {
    auto n = readln.chomp.to!int;
    foreach(i; 0..n) {
        auto s = readln.chomp;
        if(s.length > 10)
            writeln(s[0], s.length-2, s[$-1]);
        else
            writeln(s);
    }
}

