// https://codeforces.com/problemset/problem/231/A
// implementation, simulation
import std.algorithm;
import std.conv;
import std.range;
import std.stdio;

void main() {
    int answer = 0;
    foreach(line; stdin.byLine.dropOne)
        answer += (line.split.map!(to!int).sum > 1);
    answer.writeln;
}

