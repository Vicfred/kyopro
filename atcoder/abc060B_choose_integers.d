// uninhm
// https://atcoder.jp/contests/abc060/tasks/abc060_b
// implementation

import std.stdio: readf, writeln;

void main() {
	int a, b, c;
	"%s %s %s\n".readf(&a, &b, &c);

	int modulo = c % b;

	int limit = a*100;
	int i = a;
	while (i < limit) {
		if (i % b == modulo) {
			writeln("YES");
			return;
		}
		i += a;
	}
	writeln("NO");
}
