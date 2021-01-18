// uninhm
// https://codeforces.com/contest/577/problem/A
// implementation

import std.stdio: writeln, readln;
import std.conv: to;
import std.array: split, array;
import std.string: chomp;
import std.algorithm: map;

void main() {
	int[] input = readln.chomp.split(" ").map!(to!int).array;
	int n = input[0];
	int x = input[1];
	int divisors = 0;
	for (int i = 1; i < x; i++) {
		if (x%i == 0 && x/i <= n) {
			divisors++;
		}
	}
	divisors.writeln;
}
