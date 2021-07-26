// Vicfred
// https://codeforces.com/contest/1512/problem/A
// simulation, implementation
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

    int[] counter = new int[101];

    foreach(item; a) {
        counter[item] += 1;
    }

    for(int i = 0; i < n; ++i) {
        if(counter[a[i]] == 1) {
            (i + 1).writeln;
            break;
        }
    }
}
}

