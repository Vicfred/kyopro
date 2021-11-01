// Vicfred
// https://codeforces.com/contest/1551/problem/A
// math, greedy
import std.stdio;

void main() {
    int t;
    readf("%s\n", &t);

while(t--) {
    long n;
    readf("%s\n", &n);

    long c1, c2;
    c1 = n / 3L;
    c2 = n / 3L;

    if(n % 3 == 1) {
        c1 += 1;
    } else if (n % 3 == 2) {
        c2 += 1;
    }

    writefln("%s %s", c1, c2);
}
}
