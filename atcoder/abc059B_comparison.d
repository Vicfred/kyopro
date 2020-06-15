// unihernandez22
// https://atcoder.jp/contests/abc059/tasks/abc059_b
// greedy

import std.stdio: writeln, readln;
import std.string: strip;

void main() {
	string a = readln.strip;
	string b = readln.strip;

	if (a == b)
		writeln("EQUAL");
	else if (a.length > b.length)
		writeln("GREATER");
	else if (b.length > a.length)
		writeln("LESS");
	else if (a > b)
		writeln("GREATER");
	else
		writeln("LESS");
}
