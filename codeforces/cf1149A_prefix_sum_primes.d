// https://codeforces.com/problemset/problem/1149/A
// greedy
import std.algorithm;
import std.array;
import std.conv;
import std.stdio;
import std.string;

void main() {
    readln;
    int[] a = readln.split.map!(to!int).array;
    long ones = a.count(1);
    long twos = a.count(2);
    if(ones == 0) {
        foreach(two; 0..twos) {
            writefln("%s ", 2);
        }
        return;
    }
    if(twos == 0) {
        foreach(one; 0..ones) {
            writefln("%s ", 1);
        }
        return;
    }
    writef("2 1 ");
    ones -= 1;
    twos -= 1;
    for(long i = 0; i < twos; i++)
        writef("%s ", 2);
    for(long i = 0; i < ones; i++)
        writef("%s ", 1);
    writeln();
}

