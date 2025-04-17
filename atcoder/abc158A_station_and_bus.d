// vicfred
// https://atcoder.jp/contests/abc158/tasks/abc158_a
// implementation
import std.stdio;
import std.string;

void main() {
    string s = readln.chomp;
    if(s.count('A') > 0 && s.count('B') > 0)
        "Yes".writeln;
    else
        "No".writeln;
}

