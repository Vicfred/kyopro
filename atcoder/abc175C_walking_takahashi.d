// Vicfred
// https://atcoder.jp/contests/abc175/tasks/abc175_c
// math
import std.algorithm;
import std.math;
import std.stdio;

void main() {
    long X, K, D;
    readf("%s %s %s\n", &X, &K, &D);

    X = abs(X);

    long need = X/D;

    if(need > K)
        writefln("%s\n", X - D*K);
    else {
        K -= need;
        X -= need*D;
        if(K % 2 == 1)
            X = abs(X - D);
        X.writeln;
    }
}

