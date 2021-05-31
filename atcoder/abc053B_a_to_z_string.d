// uninhm
// https://atcoder.jp/contests/abc053/tasks/abc053_b
// implementation

import std.stdio;
import std.string;
void main() {
	string s = readln.chomp;
	long a = s.indexOf('A');
	long z = s.lastIndexOf('Z');

	writeln(z - a + 1);
}
