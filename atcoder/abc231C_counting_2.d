// uninhm
// https://atcoder.jp/contests/abc231/tasks/abc231_c
// binary search

import std.stdio: readf, readln, writeln;
import std.array: array, split;
import std.conv: to;
import std.algorithm: sort, map;

void main() {
  int n, q;
  "%d %d\n".readf(&n, &q);
  auto a = readln.split.map!(to!int).array.sort;
  while (q--) {
    int x;
    "%d\n".readf(&x);
    writeln(a.upperBound(x-1).length);
  }
}
