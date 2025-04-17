// vicfred
// https://atcoder.jp/contests/abc177/tasks/abc177_b
// implementation, string manipulation
import std.algorithm;
import std.stdio;
import std.string;

void main() {
    string s = readln.strip;
    string t = readln.strip;

    long minima = t.length;

    for(int i = 0; i + t.length <= s.length; ++i) {
        long mismatches = 0;

        for(int j = 0; j < t.length; ++j)
            if(t[j] != s[i + j])
                mismatches += 1;

        minima = min(minima, mismatches);
    }

    minima.writeln;
}

