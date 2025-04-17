// vicfred
// https://atcoder.jp/contests/abc193/tasks/abc193_c
// math, brute force
import std.container;
import std.stdio;

void main() {
    long N;
    readf("%s\n", &N);

    auto rbt = new RedBlackTree!long;
    for(long a = 2; a * a <= N; ++a) {
        for(long x = a * a; x <= N; x *= a) {
            rbt.insert(x);
        }
    }

    long ans = N - rbt.length;
    ans.writeln;
}
