// vicfred
// https://codeforces.com/contest/1398/problem/A
// math
import std.algorithm;
import std.array;
import std.conv;
import std.stdio;
import std.string;

void main() {
    long t = readln.chomp.to!long;

    while(t--) {
        long n = readln.chomp.to!long;
        long[] a = readln.split.map!(to!long).array;

        if(a[$-1] >= a[0] + a[1])
            writefln("1 2 %s", n);
        else
            "-1".writeln;
    }
}

