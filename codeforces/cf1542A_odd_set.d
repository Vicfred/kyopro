// Vicfred
// https://codeforces.com/contest/1542/problem/A
// math, implementation
import std.algorithm;
import std.array;
import std.conv;
import std.stdio;
import std.string;

void main() {
    int t = readln.chomp.to!int;

while(t--) {
    int n = readln.chomp.to!int;
    int[] a = readln.split.map!(to!int).array;
    int even = 0;
    int odd = 0;
    foreach(item; a) {
        if(item % 2 == 0) {
            even += 1;
        } else {
            odd += 1;
        }
    }
    if(even == odd) {
        "Yes".writeln;
    } else {
        "No".writeln;
    }
}
}
