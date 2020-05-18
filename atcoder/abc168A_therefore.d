// Vicfred
// https://atcoder.jp/contests/abc168/tasks/abc168_a
import std.stdio;
import std.conv;
import std.string;

void main() {
    int n = readln.chomp.to!int;
    n = n%10;

    switch(n) {
        case 0, 1, 6, 8:
            writeln("pon");
        break;
        case 3:
            writeln("bon");
        break;
        default:
            writeln("hon");
        break;
    }
}

