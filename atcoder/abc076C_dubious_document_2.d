// unihernandez22
// https://atcoder.jp/contests/abc076/tasks/abc076_c
// string manipulation

import std.stdio;
import std.string;
void main() {
	string s = readln.chomp;
	string t = readln.chomp;

	ulong idx = -1;
	bool matched;
	for(long i = (s.count-t.count); i >= 0; i--) {
		if (s[i] == '?' || s[i] == t[0]) {
		matched = true;
		foreach(j; 0..t.count) {
			if (s[i+j] != '?' && s[i+j] != t[j]) {
				matched = false;
				break;
			}
		}
		if (matched) {
			idx = i;
			break;
		}
		}
	}
	if (idx == -1) {
		writeln("UNRESTORABLE");
		return;
	}
	foreach(i; 0..s.count) {
		if (s[i] == '?' && (i < idx || i >= t.count+idx))
			write("a");
		else if (s[i] == '?')
			write(t[i-idx]);
		else
			write(s[i]);
	} writeln;
}
