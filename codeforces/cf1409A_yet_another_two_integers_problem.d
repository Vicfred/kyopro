// vicfred
// https://codeforces.com/contest/1409/problem/A
// math
import std.algorithm;
import std.array;
import std.conv;
import std.math;
import std.stdio;
import std.string;

void main() {
    long t = readln.chomp.to!long;
    
    while(t--) {
        long a, b;
        readf("%s %s", &a, &b);
        readln;

        real diff = (a - b)/10.0;
        long moves = cast(long)ceil(abs(diff));
        moves.writeln;
    }
}

