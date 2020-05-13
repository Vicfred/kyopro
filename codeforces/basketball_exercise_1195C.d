/// https://codeforces.com/problemset/problem/1195/c

import std.stdio : stdin, writeln;
import std.array : array, split;
import std.conv  : to;
import std.algorithm : map, max;
 
void main()
{
  int n;
  stdin.readf!"%d\n"(n);
 
  int[] a = stdin.readln().split().map!(to!int).array;
  int[] b = stdin.readln().split().map!(to!int).array;
 
  long m1 = 0, m2 = 0, _m1, _m2;
  for (int i = 0; i < n; i++) {
    _m1 = max(m1, m2 + a[i]);
    _m2 = max(m2, m1 + b[i]);
    m1 = _m1; m2 = _m2;
  }
 
  writeln(max(m1, m2));
}
