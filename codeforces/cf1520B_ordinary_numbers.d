// vicfred
// https://codeforces.com/contest/1520/problem/B
// greedy, math
import std.stdio;

void main() {
    long[] ordinary;
    long sum = 0;
    for(int i = 0; i <= 9; ++i) {
        sum += 10L^^i;
        for(long j = 1L; j <= 9L; ++j) {
            ordinary ~= j*sum;
        }
    }

    int t;
    readf("%s\n", &t);

while(t--) {
    long n;
    readf("%s\n", &n);

    int idx = 0;
    while(true) {
        if(ordinary[idx] <= n)
            idx += 1;
        else
            break;
    }
    idx.writeln;
}
}
