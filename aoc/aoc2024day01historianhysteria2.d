import std.algorithm;
import std.stdio;

long abs(long x) {
  if(x < 0) {
    return -x;
  }
  return x;
}

void main() {
  long MAXN = 1000;
  auto input = File("input.txt");
  long[1000] u;
  long[1000000] v;
  long answer = 0;
  for(long i = 0; i < MAXN; ++i) {
    long x, y;
    readf("%d %d\n", &x, &y);
    u[i] = x;
    v[y] += 1;
  }
  for(long i = 0; i < MAXN; ++i) {
    answer += u[i]*v[u[i]];
  }
  answer.writeln;
}
