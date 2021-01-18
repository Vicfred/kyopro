// uninhm
// https://codeforces.com/contest/1312/problem/C
// greedy, math

import std.stdio: writeln, readln;
import std.conv: to;
import std.array: split, array;
import std.algorithm: map, filter, any;
import std.string: chomp;

void main() {
	int t = readln.chomp.to!int;
	foreach (int _; 0..t) {
		int k = readln.chomp.split(" ").map!(to!int).array[1];
		long[] a = readln.chomp.split(" ").map!(to!long).array;

		string ans = "YES";
		while (a.any!((long x) => x != 0)) {
			long[] b = a.map!((long x) => x%k).filter!((long x) => x != 0).array;
			if (b > [1L]) {
				ans = "NO";
				break;
			}
			a = a.map!((long x) => x/k).array;
		}
		ans.writeln;
	}
}
