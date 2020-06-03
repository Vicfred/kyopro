// https://codeforces.com/problemset/problem/112/A
// basic string manipulation
import std.stdio;
import std.string;

void main() {
    string s1 = readln.chomp.toLower;
    string s2 = readln.chomp.toLower;

    if(s1 == s2)
        0.writeln;
    else if(s1 > s2)
        1.writeln;
    else
        (-1).writeln;
}

