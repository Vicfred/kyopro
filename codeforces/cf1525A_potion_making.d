// vicfred
// https://codeforces.com/contest/1525/problem/A
// basic math
import std.stdio;

int gcd(int a, int b) { return b == 0 ? a : gcd(b, a%b); }

void main() {
    int t;
    readf("%s\n", &t);

while(t--) {
    int k;
    readf("%d\n", &k);
    writefln("%s", 100/gcd(100,k));
}
}
