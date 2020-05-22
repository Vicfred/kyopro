// Vicfred
// https://atcoder.jp/contests/abc165/tasks/abc165_b
// simulation
import std.conv;
import std.stdio;
import std.string;

void main() {
    long x = readln.chomp.to!long;

    long current = 100;
    long answer = 0;

    while(current < x) {
        current += current/100;
        answer += 1;
    }

    answer.writeln;

}

