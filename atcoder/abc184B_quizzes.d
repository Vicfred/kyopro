// Vicfred
// https://atcoder.jp/contests/abc184/tasks/abc184_b
// implementation
import std.algorithm;
import std.stdio;

void main() {
    int n, x;
    string s;

    readf("%s %s\n", &n, &x);
    readf("%s\n", &s);

    foreach(ch; s) {
        if(ch == 'o')
            x += 1;
        else
            x = max(0, x - 1);
    }

    x.writeln;
}

