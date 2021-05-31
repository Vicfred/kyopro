// uninhm
// https://codeforces.com/contest/302/problem/A
// greedy

import std.stdio;
import std.array;

void main() {
  int n, m, l, r, ones = 0, mones = 0;
  "%d %d\n".readf(&n, &m);

  string[] a = readln.split;

  foreach(string i; a) {
    if(i == "1")
      ones++;
    else if(i == "-1")
      mones++;
  }
  
  foreach(_; 0 .. m) {
    "%d %d\n".readf(&l, &r);
    if(
      (r-l) % 2 == 1 &&
      (r-l+1) / 2 <= ones &&
      (r-l+1) / 2 <= mones
    )
      1.writeln;
    else
      0.writeln;
  }

}
