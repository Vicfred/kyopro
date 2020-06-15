import std.stdio: writeln, readln;
import std.array: split;

void main() {
	string[] s = readln.split;

	if (s[0][$-1] == s[1][0] && s[1][$-1] == s[2][0])
		writeln("YES");
	else
		writeln("NO");
}
