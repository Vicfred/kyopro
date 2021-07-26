// Vicfred
// https://atcoder.jp/contests/abc192/tasks/abc192_b
// basic string manipulation
import std.ascii;
import std.stdio;
import std.string;

void main() {
    string S = readln.strip;

    bool is_hard = true;
    for(int i = 0; i < S.length; ++i) {
        if(i % 2 == 0 && S[i].isUpper) {
            is_hard = false;
        }
        if(i % 2 == 1 && !S[i].isUpper) {
            is_hard = false;
        }
    }

    if(is_hard) {
        "Yes".writeln;
    } else {
        "No".writeln;
    }
}

