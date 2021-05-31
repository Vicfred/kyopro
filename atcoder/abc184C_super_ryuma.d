// Vicfred
// https://atcoder.jp/contests/abc184/tasks/abc184_c
// greedy
import std.math;
import std.stdio;

void main() {
    long r1, c1, r2, c2;
    readf("%s %s\n%s %s\n", &r1, &c1, &r2, &c2);

    if(r1 == r2 && c1 == c2) {
        0.writeln;
        return;
    }

    if(r1 + c1 == r2 + c2 ||
       r1 - c1 == r2 - c2 ||
       abs(r1 - r2) + abs(c1 - c2) <= 3) {
        1.writeln;
        return;
    }

    if((r1 + c1) %2 == (r2 + c2)%2) {
        2.writeln;
        return;
    }

    for(int i = -3; i <= 3; i++) {
        for(int j = -3; j <= 3; j++) {
            long x = r1 + i;
            long y = c1 + j;

            if(x + y == r2 + c2 ||
               x - y == r2 - c2 ||
               abs(x - r2) + abs(y - c2) <= 3) {
                2.writeln;
                return;
            }
        }
    }

    3.writeln;
}

