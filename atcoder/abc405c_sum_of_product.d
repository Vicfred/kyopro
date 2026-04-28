// uninhm
// https://atcoder.jp/contests/abc405/tasks/abc405_c
// cumulative sum

import std.stdio;
import std.algorithm;
import std.conv;
import std.array;
import std.string;

void main() {
  int n = readln.chomp.to!int;
  long[] a = readln.chomp.split.map!(to!long).array;
  long[] cum = new long[](n);

  for (int i = n-2; i >= 0; --i)
    cum[i] = cum[i+1] + a[i+1];

  long ans = 0;
  for (int i = 0; i < n; ++i)
    ans += a[i] * cum[i];
  ans.writeln;
}
