// Vicfred
// https://atcoder.jp/contests/abc152/tasks/abc152_c
// greedy
import std.algorithm;
import std.array;
import std.conv;
import std.stdio;
import std.string;

void main() {
    int n = readln.chomp.to!int;
    int[] p = readln.split.map!(to!int).array;

    int minima = 1<<30;
    int answer = 0;

    foreach(item; p) {
        if(item <= minima) {
            minima = item;
            answer += 1;
        }
    }

    answer.writeln;
}

