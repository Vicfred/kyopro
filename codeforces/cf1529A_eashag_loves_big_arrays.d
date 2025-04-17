// vicfred
// https://codeforces.com/contest/1529/problem/A
// greedy
import std.algorithm;
import std.array;
import std.conv;
import std.stdio;
import std.string;

void main() {
    int t;
    readf("%s\n", &t);

while(t--) {
    int n;
    readf("%s\n", &n);
    int[] a = readln.split.map!(to!int).array;
    int minima = a.minElement;
    int ans = 0;
    foreach(i; a) {
        if(i != minima) {
            ans += 1;
        }
    }
    ans.writeln;
}
}
