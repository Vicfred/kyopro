// uninhm
// https://atcoder.jp/contests/abc257/tasks/abc257_b
// implementation

import std.stdio;
import std.array;
import std.algorithm;
import std.conv;
import std.string;

void main() {
  int n, k, q;
  "%d %d %d\n".readf(&n, &k, &q);
  int[] a = readln.chomp.split.map!(to!int).array;
  int[] l = readln.chomp.split.map!(to!int).array;

  foreach (int x; l) {
    x -= 1; // 0-starting index
    if ((x == (k-1) || a[x]+1 != a[x+1]) && a[x] != n)
      a[x]++;
  }

  "%(%d %)".writefln(a);
}
