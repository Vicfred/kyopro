// unihernandez22
// https://atcoder.jp/contests/abc177/tasks/abc177_a
// basic math

import std.stdio: readf, writeln;

void main() {
  int d, t, s;
  "%d %d %d".readf(&d, &t, &s);

  if (t * s >= d)
    "Yes".writeln;
  else
    "No".writeln;
}
