// Vicfred
// https://atcoder.jp/contests/abc166/tasks/abc166_e
// hashing, implementation, math
import std.algorithm;
import std.array;
import std.conv;
import std.stdio;
import std.string;

void main() {
    long n = readln.chomp.to!long;

    long[] a = readln.split.map!(to!long).array;

    long[long] y;

    foreach(idx; 0..n) {
        long x = idx+1+a[idx];
        if(x in y)
            y[x] += 1;
        else
            y[x] = 1;
    }

    long answer = 0;
    foreach(i; 0..n) {
        long x = i+1-a[i];
        if(x in y)
            answer += y[x];
    }

    answer.writeln;
}
