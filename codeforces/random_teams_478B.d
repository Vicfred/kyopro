// https://codeforces.com/problemset/problem/478/B
// combinatorics, greedy
import std.stdio;

void main() {
    ulong n, m;
    readf("%s %s\n", &n, &m);
    ulong j = n-m;
    ulong maxima = j*(j+1)/2;
    ulong perteam = n/m;
    ulong minima = (m-n%m)*(perteam*(perteam-1)/2) + (n%m)*(perteam*(perteam+1)/2);
    writefln("%s %s", minima, maxima);
}

