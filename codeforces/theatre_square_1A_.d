// https://codeforces.com/problemset/problem/1/A 
// simple math
import std.stdio;
import std.math;
import std.array;
import std.algorithm;
import std.conv;

void main() {
    string input = readln();
    double[] words = input.split.map!(x => x.to!double).array;
    double n = words[0];
    double m = words[1];
    double a = words[2];
    writefln("%d", cast(ulong)(ceil(n/a)*ceil(m/a)));
}

