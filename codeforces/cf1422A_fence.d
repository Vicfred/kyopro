// Vicfred
// https://codeforces.com/contest/1422/problem/A
// math
import std;

void main() {
    long t = readln.chomp.to!long;

    long a, b, c, d;
    while(t--) {
        readf("%s %s %s", &a, &b, &c);
        readln;
        d = max(a,max(b,c));
        d.writeln;
    }
}

