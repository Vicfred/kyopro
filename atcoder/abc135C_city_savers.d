// Vicfred
// https://atcoder.jp/contests/abc135/tasks/abc135_c
// greedy
import std.algorithm;
import std.array;
import std.conv;
import std.stdio;
import std.string;

void main() {
    const long n = readln.chomp.to!long;
    long[] as = readln.split.map!(to!long).array;
    long[] bs = readln.split.map!(to!long).array;

    long monsters = 0L;
    for(long i = n-1; i >= 0L; i--) {
        long bugs = min(bs[i], as[i+1]);
        //writefln("mate %d bichos", bugs);
        monsters += bugs;
        as[i+1] -= bugs;
        bs[i] -= bugs;
        bugs = min(as[i],bs[i]);
        //writefln("mate %d bichos", bugs);
        monsters += bugs;
        bs[i] -= bugs;
        as[i] -= bugs;
        //as.writeln;
        //bs.writeln;
    }
    monsters.writeln;
}

