// vicfred
// https://atcoder.jp/contests/abc175/tasks/abc175_a
// implementation
import std.stdio;
import std.string;

void main() {
    string S = readln.strip;
    if(S.count("RRR") == 1) {
        3.writeln;
        return;
    } else if(S.count("RR") == 1) {
        2.writeln;
        return;
    } else if(S.count("R") >= 1) {
        1.writeln;
        return;
    } else {
        0.writeln;
    }
}

