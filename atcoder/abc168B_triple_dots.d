// vicfred
// https://atcoder.jp/contests/abc168/tasks/abc168_b
// implementation
import std.conv;
import std.stdio;
import std.string;

void main() {
    int K = readln.chomp.to!int;
    string S = readln.strip;

    if(S.length > K) {
        S[0..K].write;
        "...".writeln;
    } else {
        S.writeln;
    }
}

