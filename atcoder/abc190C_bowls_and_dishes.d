// vicfred
// https://atcoder.jp/contests/abc190/tasks/abc190_c
// brute force, simulatino, bitmask
import std.algorithm;
import std.stdio;

struct Pair {
    int first;
    int second;
}

void main() {
    int N, M;
    readf("%s %s\n", &N, &M);
    Pair[] conditions = new Pair[M];
    foreach(ref condition; conditions) {
        readf("%s %s\n", &condition.first, &condition.second);
    }
    int K;
    readf("%s\n", &K);
    Pair[] people = new Pair[K];
    foreach(ref person; people) {
        readf("%s %s\n", &person.first, &person.second);
    }
    int maxima = 0;
    for(int mask = 0; mask < (1 << K); mask++) {
        bool[] balls = new bool[N+1];
        foreach(index, person; people) {
            int C = person.first;
            int D = person.second;
            if(mask & (1 << index)) {
                balls[C] = true;
            } else {
                balls[D] = true;
            }
        }
        int count = 0;
        foreach(condition; conditions) {
            int A = condition.first;
            int B = condition.second;
            if(balls[A] && balls[B]) {
                count += 1;
            }
        }
        maxima = max(maxima, count);
    }
    maxima.writeln;
}

