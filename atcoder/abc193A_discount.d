// vicfred
// https://atcoder.jp/contests/abc193/tasks/abc193_a
// implementation
import std.stdio;

void main() {
    real A, B;
    readf("%s %s\n", &A, &B);

    real ans = 1.0 - B/A;
    ans *= 100.0;
    ans.writeln;
}
