// Vicfred
// https://codeforces.com/contest/1512/problem/D
// greedy
import std.algorithm;
import std.array;
import std.conv;
import std.range;
import std.stdio;
import std.string;

void main() {
    int t = readln.chomp.to!int;

while(t--) {
    long n = readln.chomp.to!long;
    long[] b = readln.split.map!(to!long).array;

    b.sort;

    long maxima = b[$ - 1];
    long cum = sum(b[0..$ - 1]);

    long x = -1L;
    for(uint i = 0L; i < n + 1L; ++i) {
        if(cum - b[i] == maxima) {
            x = b[i];
            b[i] = -1;
            break;
        }
    }

    if(x != -1L) {
        for(uint i = 0; i < n + 1L; ++i) {
            if(b[i] == -1L) {
                continue;
            }
            writef("%s ", b[i]);
        }
        "".writeln;
        continue;
    }

    maxima = b[$ - 2];
    cum = sum(b[0..$ - 2]);
    if(cum == maxima) {
        for(uint i = 0; i < n; i++) {
            writef("%s ", b[i]);
        }
        "".writeln;
    } else {
        "-1".writeln;
    }
}
}

