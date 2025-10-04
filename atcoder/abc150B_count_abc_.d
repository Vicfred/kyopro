// vicfred
// https://atcoder.jp/contests/abc150/tasks/abc150_b
// string manipulation
import std.algorithm;
import std.conv;
import std.stdio;
import std.string;

void main() {
  int N = readln.chomp.to!int;
  string S = readln.chomp;
  int ans = 0;
  for(int i = 0; i + 2 < N; ++i) {
    if(S[i] == 'A' && S[i+1] == 'B' && S[i+2] == 'C') {
      ans += 1;
    }
  }
  ans.writeln;
}
