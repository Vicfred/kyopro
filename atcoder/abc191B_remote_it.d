// vicfred
// https://atcoder.jp/contests/abc191/tasks/abc191_b
// data structures, implementation, simulation
import std.algorithm;
import std.array;
import std.conv;
import std.stdio;
import std.string;

void main() {
    long N, X;
    readf("%s %s\n", &N, &X);

    long[] A = readln.split.map!(to!long).array;

    auto ans = A.filter!(x => x != X);

    foreach(a; ans)
        writef("%s ", a);
    writeln;
}

