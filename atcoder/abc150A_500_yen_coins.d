// uninhm
// https://atcoder.jp/contests/abc150/tasks/abc150_a
// implementation

import std.stdio;

void main() {
	int k, x;
	"%s %s\n".readf(&k, &x);
	if (500 * k >= x)
		writeln("Yes");
	else
		writeln("No");
}
