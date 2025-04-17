// vicfred
// https://atcoder.jp/contests/abc162/tasks/abc162_d
// math
import std.conv;
import std.stdio;
import std.string;

void main() {
    int n = readln.chomp.to!int;
    string s = readln.chomp;

    long[char] rgb;
    rgb['R'] = 0L;
    rgb['G'] = 0L;
    rgb['B'] = 0L;

    foreach(ch; s)
        rgb[ch] += 1L;

    long first = rgb['R']*rgb['G']*rgb['B'];

    if(first == 0L) {
        "0".writeln;
        return;
    }

    long not_second = 0L;

    for(int i = 0; i < n; i++) {
        for(int j = i+1; j < n; j++) {
            int k = 2*j - i;

            if(k > n-1)
                continue;

            if(s[i] == s[j] || s[i] == s[k] || s[j] == s[k])
                continue;

            not_second += 1L;
        }
    }

    writefln("%s", first-not_second);
}

