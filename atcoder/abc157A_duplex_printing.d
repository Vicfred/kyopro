// unihernandez22
// https://atcoder.jp/contests/abc157/tasks/abc157_a
// implementation

import std.stdio: readln, writeln;
import std.string: chomp;
import std.conv: to;

void main() {
	int n = readln.chomp.to!int;
	writeln(n/2 + n%2);
}
