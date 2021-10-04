// Vicfred
// https://codeforces.com/contest/1546/problem/B
// greedy
import std.algorithm;
import std.array;
import std.conv;
import std.stdio;
import std.string;

void main() {
    int t = readln.chomp.to!int;
while(t--) {
    int n, m;
    readf("%s %s\n", &n, &m);
    string[] original, shuffled;
    for(int i = 0; i < n; ++i) {
        string s;
        readf("%s\n", &s);
        original ~= s;
    }
    for(int i = 1; i < n; ++i) {
        string s;
        readf("%s\n", &s);
        shuffled ~= s;
    }
    int[char][int] counter;
    foreach(s; original) {
        for(int i = 0; i < m; i++) {
            counter[i][s[i]] += 1;
        }
    }
    foreach(s; shuffled) {
        for(int i = 0; i < m; i++) {
            counter[i][s[i]] += 1;
        }
    }
    for(int i = 0; i < m; ++i) {
        for(char ch = 'a'; ch <= 'z'; ++ch) {
            counter[i][ch] += 0;
            if(counter[i][ch] % 2 == 1) {
                ch.write;
            }
        }
    }
    "".writeln;
}
}
