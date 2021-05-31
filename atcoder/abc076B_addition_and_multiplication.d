// uninhm
// https://atcoder.jp/contests/abc076/tasks/abc076_b
// implementation

import std.stdio;
void main() {
	int n, k;
	"%s\n%s\n".readf(&n, &k);
	int x = 1;
	foreach(_; 0..n) {
		if (x < k)
			x += x;
		else
			x += k;
	}
	x.writeln;
}
