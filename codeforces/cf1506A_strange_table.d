// vicfred
// https://codeforces.com/contest/1506/problem/A
// math
import std.stdio;

void main() {
    long t;
    readf("%s\n", &t);

while(t--) {
    long n, m, x;
    readf("%s %s %s\n", &n, &m, &x);

    x -= 1;

    long row = x % n;
    long column = x / n;

    writefln("%s", (row*m) + column + 1);
}
}

