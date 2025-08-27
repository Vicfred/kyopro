// vicfred
// https://atcoder.jp/contests/abc150/tasks/abc150_c
// brute force
import std.algorithm;
import std.array;
import std.conv;
import std.math;
import std.range;
import std.stdio;
import std.string;

void main() {
  int N = readln.chomp.to!int;
  int[] P = readln.split.map!(to!int).array;
  int[] Q = readln.split.map!(to!int).array;
  int[] permutation = iota(1, N + 1).array;
  int a, b;
  int index = 0;
  while(permutation.nextPermutation) {
    index += 1;
    if(permutation == P) {
      a = index;
    }
    if(permutation == Q) {
      b = index;
    }
  }
  abs(b - a).writeln;
}
