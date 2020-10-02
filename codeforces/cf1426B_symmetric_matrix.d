// Vicfred
// https://codeforces.com/contest/1426/problem/B
// greedy
import std.stdio;

void main() {
    int t;
    readf("%s\n", &t);

    int n, m;
    int a, b, c, d;
    while(t--) {
        readf("%s %s\n", &n, &m);
        bool found = false;
        for(int i = 0; i < n; ++i) {
            readf("%s %s\n%s %s\n", &a, &b, &c, &d);
            if(b == c)
                found = true;
        }
        if(m%2 == 1)
            found = false;
        if(found)
            "YES".writeln;
        else
            "NO".writeln;
    }
}

