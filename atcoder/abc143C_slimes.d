// uninhm
// https://atcoder.jp/contests/abc143/tasks/abc143_c
// implementation

import std.stdio;

void main() {
  int n;
  "%d\n".readf(&n);

  char c, last;
  "%c".readf(&c);
  last = c;

  int ans = 1;
  for(int i = 1; i < n; ++i) {
    "%c".readf(&c);

    if(c != last)
      ans++;

    last = c;
  }

  ans.writeln;
}
