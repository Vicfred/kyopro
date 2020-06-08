// Vicfred
// https://atcoder.jp/contests/abc153/tasks/abc153_a
// simulation
import std.stdio;

void main() {
    int h, a;
    readf("%s %s", &h, &a);

    int steps = 0;

    while(h > 0) {
        h -= a;
        steps += 1;
    }

    steps.writeln;
}

