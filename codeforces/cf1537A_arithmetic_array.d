// Vicfred
// https://codeforces.com/contest/1537/problem/A
// simple math
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
    long sum = a.sum;

    if(sum < n) {
        "1".writeln;
        continue;
    }
    writefln("%s", sum - n);
}
}
