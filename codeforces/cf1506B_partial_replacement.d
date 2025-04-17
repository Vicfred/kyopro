// vicfred
// https://codeforces.com/contest/1506/problem/B
// greedy
import std.algorithm;
import std.stdio;

void main() {
    long t;
    readf("%s\n", &t);

while(t--) {
    long n, k;
    string s;
    
    readf("%s %s\n", &n, &k);
    readf("%s\n", &s);

    long idx = -1;
    for(int i = 0; i < n; ++i) {
        if(s[i] == '*') {
            idx = i;
            break;
        }
    }

    long ans = 1;
    
    while(true) {
        long j = min(n - 1, idx + k);
        while(s[cast(uint)j] == '.')
            j -= 1;
        if(idx == j)
            break;
        idx = j;
        ans += 1;
    }

    ans.writeln;
}
}

