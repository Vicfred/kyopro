// Vicfred
// https://atcoder.jp/contests/abc147/tasks/abc147_b
// string manipulation
import std.stdio;
import std.string;

void main() {
    string s = readln.strip;
    const long n = s.length;

    int answer = 0;
    for(int i = 0; i < n; i++)
        if(s[i] != s[n-i-1])
            answer += 1;
    writefln("%d", answer/2);
}

