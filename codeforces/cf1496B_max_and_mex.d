// vicfred
// https://codeforces.com/contest/1496/problem/B
// math, greedy
import std.algorithm;
import std.array;
import std.container;
import std.conv;
import std.stdio;
import std.string;

void main() {
    long t = readln.chomp.to!long;

    long n, k;
while(t--) {
    readf("%s %s\n", &n, &k);
    long[] a = readln.split.map!(to!long).array;
    a.sort;

    long maxima = a[$-1];
    long mex = maxima + 1;
    for(int i = 0; i < n; ++i) {
        if(i != a[i]) {
            mex = i;
            break;
        }
    }

    auto rbt = redBlackTree(a);

    if(mex < maxima) {
        if(k > 0) {
            rbt.insert((maxima + mex - 1)/2 + 1);
        }
        writefln("%s", rbt.length);
        continue;
    }

    writefln("%s", n + k);

}
}

