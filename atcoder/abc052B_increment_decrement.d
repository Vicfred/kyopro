// Vicfred
// https://atcoder.jp/contests/abc052/tasks/abc052_b
// simulation
import std.algorithm;
import std.conv;
import std.stdio;
import std.string;

void main() {
    int n = readln.chomp.to!int;
    string s = readln.chomp;

    int maxima = 0;
    int x = 0;
    foreach(ch; s) {
        if(ch == 'I')
            x += 1;
        else
            x -= 1;
        maxima = max(maxima, x);
    }

    maxima.writeln;
}

