// Vicfred
// https://codeforces.com/contest/1504/problem/A
// greedy
import std.stdio;

void main() {
    long t;
    readf("%s\n", &t);

while(t--) {
    string s;
    readf("%s\n", &s);

    bool found = false;
    int n = cast(int)s.length;
    for(uint i = 0; i < n; ++i) {
        if(s[i] == 'a')
            continue;
        found = true;
        "YES".writeln;
        (s[0..n-i]~'a'~s[n-i..$]).writeln;
        break;
    }
    if(!found)
        "NO".writeln;
}
}

