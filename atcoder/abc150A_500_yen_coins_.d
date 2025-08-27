// vicfred
// https://atcoder.jp/contests/abc150/tasks/abc150_a
// implementation
import std.stdio;

void main() {
  int K, X;
  "%d %d".readf(&K, &X);
  if(K * 500 >= X) {
    "Yes".writeln;
  } else {
    "No".writeln;
  }
}
