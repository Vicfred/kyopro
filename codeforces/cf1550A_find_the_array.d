// vicfred
// https://codeforces.com/contest/1550/problem/A
// greedy
import std.stdio;

void main() {
    int t;
    readf("%s\n", &t);

while(t--) {
    int s;
    readf("%s\n", &s);

    int ans = 1;

    while(ans * ans < s) {
        ans += 1;
    }

    ans.writeln;
}
}
