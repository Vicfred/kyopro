// Vicfred
// https://codeforces.com/contest/1539/problem/A
// math
import std.algorithm;
import std.stdio;

void main() {
    int k;
    readf("%s\n", &k);

while(k--) {
    long n, x, t;
    readf("%s %s %s\n", &n, &x, &t);
    long ans = t/x*max(0, n-t/x) + min(n - 1, t/x - 1)*min(n, t/x)/2;
    ans.writeln;
}
}
