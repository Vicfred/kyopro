// unihernandez22
// https://atcoder.jp/contests/abc156/tasks/abc156_b
// greedy

import std.stdio: readf, writeln;

void main() {
	int n, k;
	"%s %s\n".readf(&n, &k);

	int ans;
	while (n > 0) {
		n /= k;
		ans++;
	}
	ans.writeln;
}
