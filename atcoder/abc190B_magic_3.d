// Vicfred
// https://atcoder.jp/contests/abc190/tasks/abc190_b
// simulation
import std.stdio;

void main() {
    long N, S, D, X, Y;
    readf("%s %s %s\n", &N, &S, &D);
    bool damage = false;
    for(int i = 0; i < N; ++i) {
        readf("%s %s\n", &X, &Y);
        if(X < S && Y > D) {
            damage = true;
            break;
        }
    }
    if(damage == true) {
        "Yes".writeln;
    } else {
        "No".writeln;
    }
}

