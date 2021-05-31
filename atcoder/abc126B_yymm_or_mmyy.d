// Vicfred
// https://atcoder.jp/contests/abc126/tasks/abc126_b
// implementation
import std.algorithm;
import std.conv;
import std.stdio;
import std.string;

void main() {
    const int a = readln.chomp.to!int;

    const int yy = a / 100;
    const int mm = a % 100;

    if(yy >= 1 && yy <= 12) {
        if(mm >= 1 && mm <= 12)
            "AMBIGUOUS".writeln;
        else
            "MMYY".writeln;
    } else {
        if(mm >= 1 && mm <= 12)
            "YYMM".writeln;
        else
            "NA".writeln;
    }
}

