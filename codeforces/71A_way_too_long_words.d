// https://codeforces.com/problemset/problem/71/A
// basic string manipulation
import std.stdio;
import std.string;

void main() {
    int n;
    readf!"%d"(n);
    readln;
    while(n--) {
        string s = readln.strip;
        if(s.length > 10)
            writeln(s[0], s.length-2, s[$-1]);
        else
            writeln(s);
    }
}

