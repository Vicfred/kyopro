// https://codeforces.com/problemset/problem/4/A
// implementation, simple math
import std.stdio;

void main() {
    int x;
    readf("%d", &x);
    if(x > 2 && x%2 == 0)
        writefln("YES");
    else
        writefln("NO");
}

