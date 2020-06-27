// unihernandez22
// https://atcoder.jp/contests/abc150/tasks/abc150_c
// implementation

import std.stdio;
import std.array;
import std.conv: to;
import std.string: chomp;
import std.algorithm;
import std.range: iota;
import std.math: abs;

void main() {
	int n = readln.chomp.to!int;
	int[] p = readln.split.map!(to!int).array;
	int[] q = readln.split.map!(to!int).array;
	int[] x = iota(1, n+1).array;
	
	int a, b;
	int step = 1;
	while (x.nextPermutation) {
		if (x == p)
			a = step;
		if (x == q)
			b = step;
		step++;
	}
	abs(a-b).writeln;
}
