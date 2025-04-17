// vicfred
// https://codeforces.com/contest/1526/problem/B
// math
import std.stdio;

void main() {
    int t;
    readf("%s\n", &t);
while(t--) {
    long x;
    readf("%s\n", &x);
    if(x > 2_000) {
        "YES".writeln;
        continue;
    }
    bool found = false;
    for(long a = 0; a < 200; ++a) {
        for(long b = 0; b < 20; ++b) {
            if(x == a*11L + b*111L) {
                found = true;
                break;
            }
        }
        if(found) break;
    }
    if(found)
        "YES".writeln;
    else
        "NO".writeln;
}
}

