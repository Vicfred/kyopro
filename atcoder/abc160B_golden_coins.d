// vicfred
// https://atcoder.jp/contests/abc160/tasks/abc160_b
// simulation
import std.conv;
import std.stdio;
import std.string;

void main() {
    int n = readln.chomp.to!int;

    long ans = (n/500)*1000;
    n -= (n/500)*500;
    ans += (n/5)*5;

    ans.writeln;
}

