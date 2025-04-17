// vicfred
// https://atcoder.jp/contests/abc180/tasks/abc180_c
// math
import std.algorithm;
import std.stdio;
import std.container;

void main() {
    long N;
    readf("%s\n", &N);

    auto rbt = new RedBlackTree!long;

    for(long d = 1; d*d <= N; d++) {
        if(N%d == 0) {
            rbt.insert(d);
            rbt.insert(N/d);
        }
    }

    foreach(item; rbt)
        item.writeln;
}

