// Vicfred
// https://atcoder.jp/contests/abc399/tasks/abc399_b
// implementation
import std.array;
import std.conv;
import std.stdio;
import std.string;
import std.range;
import std.algorithm;
import std.container.rbtree;

void main() {
  const int n = readln.chomp.to!int;
  const int[] p = readln.split.map!(to!int).array;
  auto rbtree = redBlackTree!("a > b")(p);
  int[] ranking = new int[n];
  int r = 1;
  while(!rbtree.empty) {
    int rank = rbtree.front();
    rbtree.removeFront();
    int k = 0;
    foreach(i, rating; p) {
      if(rating == rank) {
        ranking[i] = r;
        k += 1;
      }
    }
    r += k;
  }
  foreach (i; 0..n) {
    ranking[i].writeln;
  }
}
