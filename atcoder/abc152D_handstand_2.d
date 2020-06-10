// Vicfred
// https://atcoder.jp/contests/abc152/tasks/abc152_d
// math, combinatorics
import std.conv;
import std.stdio;
import std.string;

void main() {
    int n = readln.chomp.to!int;

    long[10][10] digits;

    // count the numbers starting in i and ending in j
    for(int i = 0; i <= n; i++)
        digits[i.to!string[0] - '0'][i.to!string[$-1] - '0'] += 1L;

    long answer = 0L;
    for(int i = 1; i <= 9; ++i)
        for(int j = 0; j <= 9; ++j)
            answer += digits[i][j]*digits[j][i];

    answer.writeln;
}

