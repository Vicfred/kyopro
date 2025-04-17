// vicfred
// https://codeforces.com/contest/1419/problem/A
// greedy
import std.stdio;

void main() {
    int t;
    readf("%s\n", &t);

    int n;
    string s;
    while(t--) {
        readf("%s\n", &n);
        readf("%s\n", &s);

        int even, odd;
        even = 0;
        odd = 0;

        for(int i = 1; i <= n; i++) {
            if(i % 2 == 1) {
                odd += (s[i - 1] - '0') % 2;
            } else {
                even += ((s[i - 1] - '0') + 1) % 2;
            }
        }

        int winner;
        if(n % 2 == 1) {
            if(odd > 0)
                winner = 1;
            else
                winner = 2;
            winner.writeln;
            continue;
        }

        if(even > 0)
            winner = 2;
        else
            winner = 1;
        winner.writeln;
    }
}

