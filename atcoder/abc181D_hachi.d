// unihernandez22
// https://atcoder.jp/contests/abc181/tasks/abc181_d
// greedy, string manipulation, math

import std.algorithm;
import std.array;
import std.stdio;
import std.conv;
import std.string;

int main() {
  dchar[] S;
  S = readln.strip.to!(dchar[]);

  if(S.length < 3) {
    S.sort();
    do {
      if(S.to!int % 8 == 0) {
        writeln("Yes");
        return 0;
      }
    } while(nextPermutation(S));

    writeln("No");
    return 0;
  }

  int[char] a;
  for(char i = '0'; i <= '9'; i++)
    a[i] = 0;

  foreach(char c; S)
    a[c]++;

  string[] multiples;

  for(int i = 104; i <= 999; i += 8)
    multiples ~= to!string(i);

  foreach(string multiple; multiples) {
    int[char] b;
    for(char i = '0'; i <= '9'; i++)
      b[i] = 0;

    foreach(char c; multiple)
      b[c]++;

    bool valid = true;
    for(char c = '0'; c <= '9'; c++)
      if(b[c] > a[c])
        valid = false;

    if(valid) {
      writeln("Yes");
      return 0;
    }

  }

  writeln("No");

  return 0;
}


