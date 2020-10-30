// Vicfred
// https://codeforces.com/contest/1437/problem/A
// math
import std.stdio;

void main() {
    long t;
    readf("%s\n", &t);

    long l, r;
    while(t--) {
        readf("%s %s\n", &l, &r);
        if(2L * l > r)
            "YES".writeln;
        else
            "NO".writeln;
    }
}

