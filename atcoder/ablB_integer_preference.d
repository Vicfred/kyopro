// uninhm
// https://atcoder.jp/contests/abl/tasks/abl_b
// implementation

import std.stdio;
import std.algorithm: max, min;

void main() {
  long a, b, c, d;
  "%d %d %d %d".readf(&a, &b, &c, &d);

  if (max(a, c) <= min(b, d))
    writeln("Yes");
  else
    writeln("No");
}
