// vicfred
// https://atcoder.jp/contests/abc158/tasks/abc158_c
// implementation
import std.stdio;

void main() {
    int a, b;
    readf("%s %s", &a, &b);
    for(int i = 1; i < 1010; i++) {
        if(i/10 == b && a == (i*8)/100) {
            i.writeln;
            return;
        }
    }
    (-1).writeln;
}

