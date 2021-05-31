// uninhm
// https://codeforces.com/contest/550/problem/A
// implementation

import std.stdio : writeln, readln;
import std.string : chomp;

void main() {
  string s = readln.chomp;

  bool ab = false;
  bool ba = false;
  bool optional = false;

  char last = s[0];
  foreach (char i; s) {
    if (last == 'A' && i == 'B' && !ab) {
      ab = true;
      last = 'x';
    } else if (last == 'B' && i == 'A' && !ba) {
      ba = true;
      last = 'y';
    } else {
      if (last == 'x' && i == 'A') {
        optional = true;
        ab = false;
      } else if (last == 'y' && i == 'B') {
        optional = true;
        ba = false;
      } else
        last = i;
    }
    if ((ab || ba) && optional || ba && ab) {
      writeln("YES");
      return;
    }
  }
  writeln("NO");
}
