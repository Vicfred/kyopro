// uninhm
// https://atcoder.jp/contests/abc405/tasks/abc405_b
// implementation

import std.stdio: readf, readln, writeln;
import std.algorithm: map, reverse, canFind;
import std.array: array;
import std.conv: to;
import std.string: chomp, split;

void main() {
  int n, m;
  "%d %d\n".readf(&n, &m);
  int[] a = readln.chomp.split.map!(to!int).array;

  int[] b = new int[](m);
  foreach (int e; a)
    b[e-1]++;

  if (b.canFind(0)) {
    0.writeln;
    return;
  }

  int ans = 0;
  foreach (int e; a.reverse) {
    ans++;
    b[e-1]--;
    if (b[e-1] == 0)
      break;
  }
  ans.writeln;
}
