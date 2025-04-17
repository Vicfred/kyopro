// vicfred
// https://atcoder.jp/contests/abc399/tasks/abc399_a
// implementation
import std.stdio;
import std.conv;
import std.string;

void main() {
  int n = readln.chomp.to!int;
  string s = readln.chomp;
  string t = readln.chomp;
  
  int ans = 0;
  for(int i = 0; i < n; ++i) {
    if(s[i] != t[i]) {
      ans += 1;
    }
  }
  ans.writeln;
}
