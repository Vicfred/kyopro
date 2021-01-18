// uninhm
// https://atcoder.jp/contests/abc157/tasks/abc157_b
// implementation

import std.stdio: writeln, writefln, readln;
import std.array: array, split;
import std.algorithm: map;
import std.string: chomp;
import std.conv: to;

void main() {
	int[3][3] bingo;
	foreach(byte i; 0..3) {
		int[3] input = readln.split.map!(to!int).array;
		bingo[i] = input;
	}
	int n = readln.chomp.to!int;
	bool[int] won;
	foreach(_; 0..n) {
		int x = readln.chomp.to!int;
		won[x] = true;
	}

	// Check rows
	foreach(int[3] i; bingo) {
		if (won.get(i[0], false) && won.get(i[1], false) && won.get(i[2], false)) {
			writeln("Yes");
			return;
		}
	}

	// Check columns
	foreach(byte i; 0..3) {
		if (won.get(bingo[0][i], false) && won.get(bingo[1][i], false) && won.get(bingo[2][i], false)) {
			writeln("Yes");
			return;
		}
	}

	// Check a diagonal
	bool diagonal_a = true;
	foreach(byte i; 0..3)
		diagonal_a = diagonal_a && won.get(bingo[i][i], false);

	// The other diagonal
	bool diagonal_b = true;
	foreach(byte i; 0..3)
		diagonal_b = diagonal_b && won.get(bingo[i][2-i], false);

	if (diagonal_a || diagonal_b)
		writeln("Yes");
	else
		writeln("No");
}
