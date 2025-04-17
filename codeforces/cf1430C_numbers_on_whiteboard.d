// vicfred
// https://codeforces.com/contest/1430/problem/C
// math, greedy
import std.stdio;

void main() {
    int t;
    readf("%s\n", &t);

    int n;
    while(t--) {
        readf("%s\n", &n);

        "2".writeln;

        int x = n - 2;
        int y = n;
        writefln("%s %s", n - 1, n);

        for(int i = 0; i < n - 2; ++i) {
            writefln("%s %s", x, y);
            x -= 1;
            y -= 1;
        }
    }
}
