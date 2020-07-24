// Vicfred
// https://atcoder.jp/contests/abc057/tasks/abc057_c
// math
import std.algorithm;
import std.stdio;

int digits(long n) {
    int count = 0;

    while(n > 0) {
        n /= 10;
        count += 1;
    }

    return count;
}

void main() {
    long n;
    readf("%s\n", &n);

    int ans = digits(n);

    for(long d = 1; d*d <= n; d++) {
        if(n%d != 0) continue;
        const long b = n/d;

        const int local = max(digits(d), digits(b));
        ans = min(ans, local);
    }

    ans.writeln;
}

