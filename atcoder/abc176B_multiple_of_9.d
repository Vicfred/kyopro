// vicfred
// https://atcoder.jp/contests/abc176/tasks/abc176_b
// implementation
import std.stdio;
import std.string;

void main() {
    string n = readln.strip;

    int sum = 0;
    foreach(ch; n) {
        sum += ch - '0';
        sum %= 9;
    }

    if(sum == 0)
        "Yes".writeln;
    else
        "No".writeln;
}

