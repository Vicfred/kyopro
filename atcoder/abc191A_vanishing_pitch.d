// vicfred
// https://atcoder.jp/contests/abc191/tasks/abc191_a
// math
import std.stdio;

void main() {
    int V, T, S, D;
    readf("%s %s %s %s\n", &V, &T, &S, &D);

    real t = float(D)/float(V);

    if(t >= T && t <= S)
        "No".writeln;
    else
        "Yes".writeln;
}

