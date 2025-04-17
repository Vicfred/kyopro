// vicfred
// https://atcoder.jp/contests/abc164/tasks/abc164_b
// simulation
import std.stdio;

void main() {
    int a, b, c, d;
    readf("%s %s %s %s\n", &a, &b, &c, &d);

    int step = 1;
    while(a > 0 && c > 0) {
        if(step%2 == 1)
            c -= b;
        else
            a -= d;
        step += 1;
    }

    if(step%2 == 1) {
        "No".writeln;
    }
    else {
        "Yes".writeln;
    }
}

