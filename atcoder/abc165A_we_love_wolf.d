// Vicfred
// https://atcoder.jp/contests/abc165/tasks/abc165_a
// simulation
import std.conv;
import std.stdio;
import std.string;

void main() {
    int k = readln.chomp.to!int;
    int a, b;
    readf("%s %s\n", &a, &b);
    for(int i = a; i <= b; ++i) {
        if(i%k == 0) {
            "OK".writeln;
            return;
        }
    }
    "NG".writeln;
}

