// uninhm
// https://codeforces.com/contest/1401/problem/A
// implementation

import std.stdio;

void main() {
  int n, k, t;
  scanf("%d", &t);
  foreach (_; 0 .. t) {
    scanf("%d %d", &n, &k);
    if (k <= n) {
      if (n%2 == k%2) {
        writeln("0");
      } else {
        writeln("1");
      }
    } else
      writeln(k - n);
  }
}
