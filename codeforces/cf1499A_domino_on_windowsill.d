// Vicfred
// https://codeforces.com/contest/1499/problem/A
// greedy
import std.algorithm;
import std.stdio;

void main() {
    long t;
    readf("%s\n", &t);

while(t--) {
    long n, k1, k2;
    readf("%s %s %s\n", &n, &k1, &k2);

    if(k2 < k1)
        swap(k1,k2); // k2 >= k1

    long w, b;
    readf("%s %s\n", &w, &b);

    long j1, j2;
    j1 = n - k1;
    j2 = n - k2;

    long whites = k1 + ((k2 - k1) >> 1);
    long blacks = j2 + ((j1 - j2) >> 1);

    if(whites >= w && blacks >= b) {
        "YES".writeln;
    }
    else {
        "NO".writeln;
    }
}
}

