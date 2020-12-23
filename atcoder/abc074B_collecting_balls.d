// uninhm
// https://atcoder.jp/contests/abc074/tasks/abc074_b
// implementation

import std.stdio;
import std.array;
import std.algorithm;
import std.conv;

void main() {
	int n, k;
	"%s\n%s\n".readf(&n, &k);
	int[] x = readln.split.map!(to!int).array;

	long ans = 0;
	foreach(int i; x) {
		ans += min(k-i, i)*2;
	}
	ans.writeln;
}
