// unihernandez22
// https://codeforces.com/contest/1283/problem/A
// implementation

import std.stdio;
void main() {
	int t;
	"%d\n".readf(&t);
	foreach(_; 0..t) {
		int h, m;
		"%d %d\n".readf(&h, &m);
		writeln((24-h)*60 - m);
	}
}
