// unihernandez22
// https://atcoder.jp/contests/abc061/tasks/abc061_a
// implementation

import std.stdio: readf, writeln;

void main() {
	int a, b, c;
	"%s %s %s\n".readf(&a, &b, &c);

	if (c >= a && c <= b)
		writeln("Yes");
	else
		writeln("No");
}
