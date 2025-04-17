// vicfred
// https://codeforces.com/contest/1516/problem/A
// greedy, implementation
import std.algorithm;
import std.array;
import std.conv;
import std.stdio;
import std.string;

void main() {
    int t = readln.chomp.to!int;

while(t--) {
    int n, k;
    readf("%s %s\n", &n, &k);

    int[] a = readln.split.map!(to!int).array;

    int idx = 0;
    while(k > 0 && idx < n) {
        while(a[idx] <= 0) {
            idx += 1;
        }
        if (idx >= n - 1) break;
        a[idx]--;
        a[$ - 1]++;
        k -= 1;
    }

    foreach(item; a)
        writef("%s ", item);
    "".writeln;
}
}

