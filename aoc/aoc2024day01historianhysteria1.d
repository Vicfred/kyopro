import std.algorithm;
import std.stdio;

long abs(long x) {
  if(x < 0) {
    return -x;
  }
  return x;
}

void main() {
  auto input = File("input.txt");
  long[] u;
  long[] v;
  long answer = 0;
  while(!input.eof()) {
    long x, y;
    input.readf("%d %d\n", &x, &y);
    if(!input.eof()) {
      u ~= x;
      v ~= y;
    }
  }
  u.sort;
  v.sort;
  for(long i = 0; i < 1000; ++i) {
    answer += abs(u[i] - v[i]);
  }
  answer.writeln;
}
