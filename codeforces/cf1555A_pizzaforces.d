// vicfred
// https://codeforces.com/contest/1555/problem/A
// basic math
import std.algorithm;
import std.stdio;

void main() {
    long t;
    readf("%s\n", &t);

while(t--) {
    long n;
    readf("%s\n", &n);
    long ans = max(6L, n + 1L) / 2L * 5L;
    ans.writeln;
}
}
