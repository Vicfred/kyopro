// Vicfred
// https://atcoder.jp/contests/abc124/tasks/abc124_a
// implementation, simulation
import std.algorithm;
import std.stdio;

void main() {
    int a, b;
    readf("%s %s\n", &a, &b);

    int option1 = a + b;
    int option2 = a + a - 1;
    int option3 = b + b - 1;

    int ans = max(option1, max(option2, option3));

    ans.writeln;
}

