// vicfred
// https://atcoder.jp/contests/abc151/tasks/abc151_c
// data structures
import std.stdio;

void main() {
  enum max_n = 10^^5 + 1;
  int[max_n] problems;
  int[max_n] fails;
  int N, M;
  "%d %d\n".readf(&N, &M);
  int p;
  string s;
  int ac = 0;
  int wa = 0;
  foreach(i; 0 .. M) {
    "%d %s\n".readf(&p, &s);
    if(s == "AC") {
      if(problems[p] == 0) {
        problems[p] = 1;
        ac += 1;
        wa += fails[p];
      }
    } else {
      fails[p] += 1;
    }
  }
  writefln("%d %d", ac, wa);
}
