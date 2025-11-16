// vicfred
// http://atcoder.jp/contests/abc431/tasks/abc431_b
// data structures
import std.algorithm;
import std.array;
import std.conv;
import std.stdio;
import std.string;

void main() {
  int X = readln.chomp.to!int;
  int N = readln.chomp.to!int;
  int[] W = readln.split.map!(to!int).array;
  int Q = readln.chomp.to!int;
  bool[] used;
  used.length = N;
  foreach(i; 0 .. Q) {
    int P = readln.chomp.to!int;
    P -= 1;
    if(used[P] == true) {
      used[P] = false;
      X -= W[P];
    } else {
      used[P] = true;
      X += W[P];
    }
    X.writeln;
  }
}
