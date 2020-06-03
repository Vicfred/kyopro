// Vicfred
// https://codeforces.com/problemset/problem/1154/A
// math
import std.algorithm;
import std.array;
import std.conv;
import std.stdio;

void main() {
    int[] numbers = readln.split.map!(to!int).array;
    numbers.sort;
    int abc = numbers[$-1];
    int x = abc-numbers[0];
    writefln("%d %d %d", x, numbers[1]-x, numbers[2]-x);
}
