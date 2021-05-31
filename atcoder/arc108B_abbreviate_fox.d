// Vicfred
// https://atcoder.jp/contests/arc108/tasks/arc108_b
// string manipulation, greedy
import std.stdio;
import std.string;

void main() {
    int n;
    string s;

    readf("%s\n%s\n", &n, &s);

    char[] t;

    foreach(ch; s) {
        t ~= ch;

        while(t.length >= 3 && t[$-3..$] == ['f', 'o', 'x'])
            t = t[0..$-3];
    }

    t.length.writeln;
}

