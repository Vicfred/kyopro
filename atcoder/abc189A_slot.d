// vicfred
// https://atcoder.jp/contests/abc189/tasks/abc189_a
// implementation
import std.stdio;

void main() {
    string C;
    readf("%s\n", &C);

    if(C[0] == C[1] && C[1] == C[2]) {
        "Won".writeln;
    } else {
        "Lost".writeln;
    }
}

