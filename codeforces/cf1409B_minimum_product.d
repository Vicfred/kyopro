// vicfred
// https://codeforces.com/contest/1409/problem/B
// math
import std.algorithm;
import std.array;
import std.conv;
import std.stdio;
import std.string;

void main() {
    long t = readln.chomp.to!long;

    while(t--) {
        int a, b, x, y, n;
        readf("%s %s %s %s %s", &a, &b, &x, &y, &n);
        readln;


        long minima = long.max;
        for(int i = 0; i < 2; i++) {
            long new_n = n;
            long moves = min(a-x, new_n);
            long new_a = a-moves;

            new_n -= moves;

            long new_b = b-min(b-y, new_n);

            minima = min(minima, new_a*new_b);

            swap(a,b);
            swap(x,y);
        }

        minima.writeln;
    }
}

