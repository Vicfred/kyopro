// vicfred
// https://atcoder.jp/contests/abc192/tasks/abc192_a
// implementation, simulation
import std.stdio;

void main() {
    int X;
    readf("%s\n", &X);

    for(int i = X + 1; X <= 10^^5; ++i) {
        if(i % 100 == 0) {
            writefln("%s", i - X);
            return;
        }
    }
}

