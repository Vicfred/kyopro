// unihernandez22
// https://atcoder.jp/contests/abc126/tasks/abc126_a
// implementation

import std.stdio: writeln, readf, readln;
import std.string: chomp;
import std.ascii: toLower;

void main() {
	int n, k;
	"%d %d\n".readf(&n, &k);

	char[] s = readln.chomp.dup;

	s[k-1] = s[k-1].toLower;

	s.writeln;
}
