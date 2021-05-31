// Vicfred
// https://codeforces.com/contest/1437/problem/B
// string manipulation, greedy
import std.algorithm;
import std.stdio;

void main() {
    long t;
    readf("%s\n", &t);

    long n;
    string s;
    while(t--) {
        readf("%s\n%s\n", &n, &s);
        long ans = n - s.count("10") - s.count("01");
        (ans/2).writeln;
    }
}

