// Vicfred
// https://codeforces.com/contest/1543/problem/A
// math
import std.algorithm;
import std.stdio;

void main() {
    int t;
    readf("%s\n", &t);

while(t--) {
    long a, b;
    readf("%s %s\n", &a, &b);
    if(a == b) {
        "0 0".writeln;
        continue;
    }
    if(a > b) {
        swap(a, b);
    }
    writefln("%s %s", b - a, min(a % (b - a), b - a - a % (b - a)));
}
}
