// Vicfred
// https://atcoder.jp/contests/abc136/tasks/abc136_c
// greedy
import std.algorithm;
import std.array;
import std.conv;
import std.stdio;
import std.string;

void main() {
    const long n = readln.chomp.to!long;
    long[] h = readln.split.map!(to!long).array;

    long maxima = h[0] - 1;
    foreach(square; h) {
        if(square > maxima)
            square -= 1;

        if(square < maxima) {
            "No".writeln;
            return;
        }

        maxima = square;
    }

    "Yes".writeln;
}

