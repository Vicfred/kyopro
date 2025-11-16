// vicfred
// https://atcoder.jp/contests/abc431/tasks/abc431_a
// implementation
import std.algorithm;
import std.array;
import std.conv;
import std.stdio;
import std.string;

void main() {
  int[] hb = readln.split.map!(to!int).array;
  int h = hb[0];
  int b = hb[1];
  int ans = max(0, h - b);
  ans.writeln;
}
