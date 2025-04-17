// vicfred
// https://atcoder.jp/contests/hhkb2020/tasks/hhkb2020_a
// string manipulation
import std.stdio;
import std.string;

void main() {
    string s, t;
    readf("%s\n%s\n", &s, &t);
    
    if(s == "Y")
        t = t.toUpper;

    t.writeln;
}

