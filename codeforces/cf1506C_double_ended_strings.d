// vicfred
// https://codeforces.com/contest/1506/problem/C
// brute force
import std.algorithm;
import std.stdio;

void main() {
    long t;
    readf("%s\n", &t);

while(t--) {
    string a, b;
    readf("%s\n", &a);
    readf("%s\n", &b);

    int n = cast(int)a.length;
    int m = cast(int)b.length;

    int minima = min(n, m);

    int maxima = 0;
    for(int z = 1; z <= minima; z++) {
        for(int i = 0; i + z <= n; i++) {
            for(int j = 0; j + z <= m; j++) {
                if(a[i..i+z] == b[j..j+z])
                    maxima = max(maxima, z);
            }
        }
    }

    writefln("%s", n - maxima + m - maxima);
}
}

