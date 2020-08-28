// Ported to D by unihernandez22
// Solution by Vicfred
// https://codeforces.com/contest/1401/problem/B

import std.stdio;
import std.string;
import std.conv;
import std.array;
import std.algorithm;

void main() {
  int t = readln.chomp.to!int;
  foreach (_; 0 .. t) {
    int[] a = readln.split.map!(to!int).array,
      b = readln.split.map!(to!int).array;
    int ans = 0;
    
    if (a[2] > 0) {
      int taken = min(b[1], a[2]);
      a[2] -= taken;
      b[1] -= taken;

      ans += taken*2;
    }

    if (a[2] > 0) {
      int taken = min(b[2],a[2]);
      a[2] -= taken;
      b[2] -= taken;
    }

    if (a[2] > 0) {
      int taken = min(b[0],a[2]);
      a[2] -= taken;
      b[0] -= taken;
    }

    if (a[1] > 0) {
      int taken = min(b[1],a[1]);
      a[1] -= taken;
      b[1] -= taken;
    }

    if (a[1] > 0) {
      int taken = min(b[0],a[1]);
      a[1] -= taken;
      b[0] -= taken;
    }

    if (a[1] > 0) {
      int taken = min(b[2],a[1]);
      a[1] -= taken;
      b[2] -= taken;
      ans += taken*(-2);
    }

    writeln(ans);
  }
}

