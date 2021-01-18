// uninhm
// https://atcoder.jp/contests/abc154/tasks/abc154_d
// two pointers

import std.stdio: writefln, readln, readf;
import std.algorithm: map, max, sum;
import std.array: array, split;
import std.conv: to;

void main() {
	int n, k;
	readf("%s %s\n", &n, &k);

	double[] a = readln.split.map!(a => (a.to!double + 1) / 2).array;

	double ans = sum(a[0..k]);
	int i = 0;
	double suma = ans;
	while (i+k < n) {
		suma += a[i+k] - a[i];
		if (suma > ans) ans = suma;
		i++;
	}
	"%.10f".writefln(ans);
}
