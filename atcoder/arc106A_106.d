// Vicfred
// https://atcoder.jp/contests/arc106/tasks/arc106_a
// math
import std.stdio;

void main() {
    long n;
    readf("%s\n", &n);

    for(long a = 1; a <= 38; a++) {
        for(long b = 1; b <= 26; b++) {
            if(3L^^a+5L^^b == n) {
                writefln("%s %s", a, b);
                return;
            }
        }
    }
    "-1".writeln;
}

