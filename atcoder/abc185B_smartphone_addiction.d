// vicfred
// https://atcoder.jp/contests/abc185/tasks/abc185_b
// simulation
import std.stdio;
import std.algorithm;

void main() {
    int n, m, t;
    readf("%s %s %s\n", &n, &m, &t);

    int battery = n;

    int s = 0;

    int a, b;
    foreach(i; 0..m) {
        readf("%s %s\n", &a, &b);
        battery -= a - s;

        if(battery <= 0) {
            "No".writeln;
            return;
        }

        s = b;

        battery = min(n, battery + b - a);
    }

    if(battery < (t - s + 1)) {
        "No".writeln;
        return;
    }

    "Yes".writeln;
}

