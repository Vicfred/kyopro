// Vicfred
// https://atcoder.jp/contests/abc161/tasks/abc161_b
// simulation
import std.algorithm;
import std.array;
import std.conv;
import std.stdio;

void main() {
    int n, m;
    readf("%s %s\n", &n, &m);

    int[] a = readln.split.map!(to!int).array;

    int s = sum(a);

    int answer = 0;
    foreach(votes; a)
        if(4*m*votes >= s)
            answer += 1;

    if(answer >= m)
        "Yes".writeln;
    else
        "No".writeln;
}

