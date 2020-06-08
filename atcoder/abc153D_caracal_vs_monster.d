// Vicfred
// https://atcoder.jp/contests/abc153/tasks/abc153_d
// backtracking
import std.stdio;

long f(long h) {
    if(h == 1L)
        return 1;
    return 1L+2L*f(h/2L);
}

void main() {
    long h;
    readf("%s", &h);
    readln;

    f(h).writeln;
}

