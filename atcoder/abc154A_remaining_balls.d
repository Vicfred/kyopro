import std.stdio: writefln, readf, readln;
import std.array: split;
import std.string: chomp;

void main() {
	string[] balls = readln.split;
	int a, b;
	readf("%s %s\n", &a, &b);
	string u = readln.chomp;
	if (u == balls[0])
		a--;
	else
		b--;
	writefln("%s %s", a, b);
}
