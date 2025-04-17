// vicfred
// https://codeforces.com/contest/1541/problem/A
// greedy
import std.stdio;

void main() {
    int t;
    readf("%s\n", &t);

while(t--) {
    int n;
    readf("%s\n", &n);
    if(n == 1) {
        "1".writeln;
        continue;
    }
    if(n % 2 == 0) {
        for(int i = 1; i <= n; ++i) {
            if(i % 2 == 1) {
                writef("%s ", i + 1);
            } else {
                writef("%s ", i - 1);
            }
        }
        "".writeln;
        continue;
    }
    "2 3 1 ".write;
    for(int i = 4; i <= n; ++i) {
        if(i % 2 == 0) {
            writef("%s ", i + 1);
        } else {
            writef("%s ", i - 1);
        }
    }
    "".writeln;
}
}
