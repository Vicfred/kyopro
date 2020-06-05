// Vicfred
// https://atcoder.jp/contests/abc155/tasks/abc155_b
// simulation
import std.algorithm;
import std.array;
import std.conv;
import std.stdio;
import std.string;

void main() {
    int n = readln.chomp.to!int;
    int[] a = readln.split.map!(to!int).array;

    foreach(item; a) {
        if(item%2 == 0 && item%3 != 0 && item%5 != 0) {
            writeln("DENIED");
            return;
        }
    }
    writeln("APPROVED");
}

