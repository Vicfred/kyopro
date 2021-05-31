// Vicfred
// https://atcoder.jp/contests/abc056/tasks/arc070_a
// simulation, greedy
import std.stdio;

void main() {
    const int maxn = 10^^5;
    int X;
    readf("%s\n", &X);

    long[] dist = new long[maxn + 5];
    for(int i = 1; i < maxn; i++)
        dist[i] = dist[i - 1] + i;

    for(int i = 0; i < maxn; i++)
        if(dist[i] >= X) {
            i.writeln;
            return;
        }
}

