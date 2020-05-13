// unihernandez22
// https://codeforces.com/problemset/problem/1328/B
// greedy

import std.stdio: writeln, readln;
import std.array: array, split;
import std.string: chomp, count;
import std.conv: to;
import std.algorithm: map;

string multi_str(string a, ulong times) {
    string result;
    foreach (ulong i; 0..times) {
        result ~= a;
    }
    return result;
}
// 7 6 --> 0001100
void main() {
    int t = readln.chomp.to!int;
    foreach (int _; 0..t) {
        int[2] words = readln.split.map!(to!int).array;
        int[] a = [1];
        int i;
        while (a[$-1] <= words[1]) {
            a ~= ++i + a[$-1];
        }
        writeln(multi_str("a", words[0] - a.count) ~ "b" ~ multi_str("a", a.count - words[1] + a[$-2] - 2) ~ "b" ~ multi_str("a", words[1] - a[$-2]));
    }
}
