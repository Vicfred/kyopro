/// https://codeforces.com/problemset/problem/1303/B

import std.stdio : stdin, writeln;
import std.algorithm : max;

void main()
{
  int t, n, g, b;
  long k, m;
  stdin.readf!"%d\n"(t);

  while (t--) {
    stdin.readf!"%d %d %d\n"(n, g, b);
    k = (n + 1) >> 1;
    m = (k/g + (k%g > 0) - 1)*b + k; // [ceil(k/g) - 1]*b + k
    writeln(max(n, m));
  }
}
