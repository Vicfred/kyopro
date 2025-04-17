// vicfred
// https://codeforces.com/contest/1395/problem/A
// greedy
import std.stdio;

void main() {
    long t;
    readf("%s", &t);
    readln;

    while(t--) {
        long r, g, b, w;
        readf("%s %s %s %s", &r, &g, &b, &w);
        readln;

        long x = r%2 + g%2 + b%2 + w%2;

        if(x <= 1) {
            "Yes".writeln;
            continue;
        }

        if(r > 0 && g > 0 && b > 0) {
            r -= 1;
            g -= 1;
            b -= 1;
            w += 1;
        }

        x = r%2 + g%2 + b%2 + w%2;

        if(x <= 1) {
            "Yes".writeln;
            continue;
        }

        "No".writeln;
    }
}
