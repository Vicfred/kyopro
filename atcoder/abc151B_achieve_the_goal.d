// vicfred
// https://atcoder.jp/contests/abc151/tasks/abc151_b
// implementation, math
import std.algorithm;
import std.array;
import std.conv;
import std.stdio;
import std.string;

void main() {
  int N, K, M;
  "%d %d %d\n".readf(&N, &K, &M);
  int[] A = readln.split.map!(to!int).array;
  int cumulative = A.sum;
  if(N * M - cumulative > K) {
    "-1".writeln;
    return;
  }
  max(0,(M * N - cumulative)).writeln;
}
