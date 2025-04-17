// vicfred
// https://atcoder.jp/contests/abc174/tasks/abc174_c
// math

import std.bigint;
import std.stdio;

void main() {
    int k;
    readf("%s\n", &k);

    int kkk = 7;
    int steps = 1;

    while(kkk%k != 0) {
        if(steps >= 10^^6+5) {
            steps = -1;
            break;
        }

        steps += 1;
        kkk = kkk * 10 + 7;
        kkk %= k;
    }

    steps.writeln;
}

