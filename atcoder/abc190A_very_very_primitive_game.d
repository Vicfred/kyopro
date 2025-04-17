// vicfred
// https://atcoder.jp/contests/abc190/tasks/abc190_a
// simulation
import std.stdio;

void main() {
    int A, B, C;
    readf("%s %s %s\n", &A, &B, &C);
    int[2] elotes = [A, B];
    if(B == 0 && C == 1) {
        "Takahashi".writeln;
        return;
    }
    while(elotes[0] > 0 && elotes[1] > 0) {
        elotes[C] -= 1;
        C += 1;
        C = C % 2;
    }
    if(elotes[0] == 0) {
        "Aoki".writeln;
    } else {
        "Takahashi".writeln;
    }
}

