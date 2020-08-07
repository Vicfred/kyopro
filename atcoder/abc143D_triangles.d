// unihernandez22
// https://atcoder.jp/contests/abc143/tasks/abc143_d
// binary search

import std;

int binary_search(int[] a, int x) {
  int
    left = -1,
    right = (a.length.to!int);
  while (right-left > 1) {
    int cur = (right+left) / 2;
    if (a[cur] < x)
      left = cur;
    else
      right = cur;
  }
  return right;
}


void main() {
  int n = readln.chomp.to!int;
  int[] l = readln.split.map!(to!int).array;
  l.sort();
  int ans = 0;
  foreach (int a; 0 .. n)
    foreach (int b; a+1 .. n)
      ans += l.binary_search(l[a] + l[b]) - b - 1;
  ans.writeln;
}
