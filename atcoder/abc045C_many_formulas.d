// vicfred
// https://atcoder.jp/contests/abc045/tasks/arc061_a
// brute force, bitmask
import std.algorithm;
import std.array;
import std.conv;
import std.stdio;
import std.string;

void main() {
    string s = readln.strip;

    const long n = s.length;
    long ans = 0;

    for(int bit = 0; bit < (1 << n - 1); bit++) {
        string tmp;
        for(int idx = 0; idx < n; idx++) {
            tmp ~= s[idx];
            if(!(bit & (1<<idx))) {
                ans += tmp.to!long;
                tmp = "";
            }
        }
    }

    ans.writeln;
}

