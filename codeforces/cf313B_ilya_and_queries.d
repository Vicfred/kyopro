// https://codeforces.com/problemset/problem/313/B
// dynamic programming, cumulative sum
import std.stdio;
import std.string;
import std.conv;

void main() {
    string s = readln.chomp;

    int[100005] a;

    // preprocess
    for(int i = 1; i < s.length; i++) {
        if(s[i] == s[i-1])
            a[i] = 1;
    }

    // cumulative sum
    for(int i = 1; i < s.length; i++) {
        a[i] += a[i-1];
    }

    int m = readln.chomp.to!int;

    int l, r;
    foreach(idx; 0..m) {
        readf("%d %d\n", &l, &r);
        // sum in range
        writefln("%d", a[--r]-a[--l]);
    }
}

