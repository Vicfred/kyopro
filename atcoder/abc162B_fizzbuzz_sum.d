// vicfred
// https://atcoder.jp/contests/abc162/tasks/abc162_b
// simulation
import std.conv;
import std.stdio;
import std.string;

void main() {
    int n = readln.chomp.to!int;

    long sum = 0;
    foreach(i; 1..n+1) {
        if(i%3 != 0 && i%5 != 0)
            sum += i;
    }
    sum.writeln;
}

