// vicfred
// https://atcoder.jp/contests/abc048/tasks/arc064_a
// greedy, sliding window
import std.algorithm;
import std.array;
import std.conv;
import std.stdio;
import std.string;

void main() {
    long n, x;
    readf("%s %s\n", &n, &x);

    long[] as = readln.split.map!(to!long).array;

    long ans = 0;
    for(int i = 0; i + 1 < n; i++) {
        if(as[i] + as[i + 1] > x) {
            if(as[i] > x) {
                ans += as[i] - x;
                ans += as[i + 1];
                as[i] = x;
                as[i + 1] = 0;
            } else {
                ans += as[i + 1] + as[i] - x;
                as[i + 1] = x - as[i];
            }
        }
    }
    ans.writeln;
}

