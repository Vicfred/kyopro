// uninhm
// https://atcoder.jp/contests/abc199/tasks/abc199_c
// greedy, implementation

import std.stdio;
import std.string;
import std.array;
import std.algorithm;
import std.conv;

void main() {
  int n;
  readf("%d\n", &n);
  char[] s = readln.chomp.map!(to!char).array;
  bool is_flipped = false;
  int q;
  readf("%d\n", &q);
  while (q--) {
    int t, a, b;
    readf("%d %d %d\n", &t, &a, &b);

    if (t == 1) {
      --a;
      --b;
      if (is_flipped) {
        if (a < n) a += n;
        else a -= n;
        if (b < n) b += n;
        else b -= n;
      }
      char tmp = s[a];
      s[a] = s[b];
      s[b] = tmp;
    } else {
      is_flipped = !is_flipped;
    }
  }
  if (is_flipped) {
    s[n .. $].write;
    s[0 .. n].writeln;
  } else {
    s.writeln;
  }
}
