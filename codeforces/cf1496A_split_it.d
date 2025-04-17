// vicfred
// https://codeforces.com/contest/1496/problem/A
// string manipulation
import std.algorithm;
import std.stdio;
import std.conv;
import std.string;
import core.stdc.string : strlen;

void main() {
    long t;
    readf("%s\n", &t);

    uint n, k;
    string s;
while(t--) {
    readf("%s %s\n", &n, &k);
    readf("%s\n", &s);

    if(k == 0) {
        "YES".writeln;
        continue;
    }

    if(2*k == n) {
        "NO".writeln;
        continue;
    }

    if(s[0..k] == s[$-k..$].dup.reverse) {
        "YES".writeln;
    } else {
        "NO".writeln;
    }
}
}
