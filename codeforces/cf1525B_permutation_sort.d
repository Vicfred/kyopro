// Vicfred
// https://codeforces.com/contest/1525/problem/B
// greedy
import std.algorithm;
import std.array;
import std.conv;
import std.stdio;
import std.string;

void main() {
    int t;
    readf("%d\n", &t);

while(t--) {
    int n;
    readf("%d\n", &n);
    int[] a = readln.split.map!(to!int).array;
    bool is_sorted = true;
    for(int i = 1; i < n; ++i) {
        if(a[i] < a[i - 1]) {
            is_sorted = false;
            break;
        }
    }
    if(is_sorted) {
        "0".writeln;
        continue;
    }
    if(a[0] == 1 || a[$-1] == n) {
        "1".writeln;
        continue;
    }
    if(a[0] == n && a[$-1] == 1) {
        "3".writeln;
        continue;
    }
    "2".writeln;
}
}

