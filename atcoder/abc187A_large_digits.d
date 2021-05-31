// Vicfred
// https://atcoder.jp/contests/abc187/tasks/abc187_a
// implementation
import std.algorithm;
import std.stdio;

void main() {
    string a, b;
    readf("%s %s\n", &a, &b);

    int sa, sb;
    sa = 0;
    sb = 0;

    foreach(ch; a) {
        sa += ch - '0';
    }
    
    foreach(ch; b) {
        sb += ch - '0';
    }

    int ans = max(sa, sb);
    ans.writeln;
}

