// uninhm
// https://atcoder.jp/contests/abc059/tasks/abc059_a
// implementation

import std.stdio: writefln, readln;
import std.array: split, array;
import std.string: capitalize;
import std.algorithm: map;

void main() {
	string[] s = readln.split.map!(capitalize).array;
	"%s%s%s".writefln(s[0][0], s[1][0], s[2][0]);
}
