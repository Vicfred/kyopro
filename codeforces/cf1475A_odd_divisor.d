// Vicfred
// https://codeforces.com/contest/1475/problem/A
// math
import std.stdio;

void main() {
    int t;
    readf("%s\n", &t);

while(t--) {
    long n;
    readf("%s\n", &n);

    while(n % 2 == 0) {
        n /= 2;
    }

    if(n > 1)
        "Yes".writeln;
    else
        "No".writeln;
}
}

