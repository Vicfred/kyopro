// Vicfred
// https://codeforces.com/contest/1521/problem/A
// math
import std.stdio;

void main() {
    int t;
    readf("%s\n", &t);

while(t--) {
    long A, B;
    readf("%s %s\n", &A, &B);

    if(B == 1L) {
        "NO".writeln;
        continue;
    }

    long x = A;
    long y = A*B;
    long z = A*(B + 1L);
    "YES".writeln;
    writefln("%s %s %s", x, y, z);
}
}

