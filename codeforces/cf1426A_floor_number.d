// vicfred
// https://codeforces.com/contest/1426/problem/A
// math
import std.stdio;

void main() {
    int t;
    readf("%s\n", &t);

    int n, x;
    while(t--) {
        readf("%s %s\n", &n, &x);
        if(n <= 2) {
            "1".writeln;
            continue;
        }
        int ans = (n - 3)/x + 2;
        ans.writeln;
    }
}

