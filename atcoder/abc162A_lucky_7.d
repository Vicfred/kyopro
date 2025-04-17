// vicfred
// https://atcoder.jp/contests/abc162/tasks/abc162_a
// implementation
import std.stdio;

void main() {
    string n = readln;

    foreach(ch; n) {
        if(ch == '7') {
            "Yes".writeln;
            return;
        }
    }
    "No".writeln;
}

