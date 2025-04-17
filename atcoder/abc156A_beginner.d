// vicfred
// https://atcoder.jp/contests/abc156/tasks/abc156_a
// math
import std.stdio;

void main() {
    int n, r;
    readf("%s %s\n", &n, &r);

    if(n >= 10)
        r.writeln;
    else
        writefln("%s", r+100*(10-n));
}

