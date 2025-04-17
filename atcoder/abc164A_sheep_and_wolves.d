// vicfred
// https://atcoder.jp/contests/abc164/tasks/abc164_a
// simulation
import std.stdio;

void main() {
    int s, w;
    readf("%s %s\n", &s, &w);
    if(w >= s)
        writeln("unsafe");
    else
        writeln("safe");
}

