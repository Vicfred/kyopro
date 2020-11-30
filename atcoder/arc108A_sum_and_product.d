// Vicfred
// https://atcoder.jp/contests/arc108/tasks/arc108_a
// math, prime numbers, factorization
import std.stdio;

void main() {
    long s, p;
    readf("%s %s\n", &s, &p);

    for(long d = 1L; d*d <= p; d++) {
        if(p % d == 0 && d + (p / d) == s) {
            "Yes".writeln;
            return;
        }
    }

    "No".writeln;
}

