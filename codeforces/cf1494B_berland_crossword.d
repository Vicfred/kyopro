// vicfred
// https://codeforces.com/contest/1494/problem/B
// brute force, bitmask
import std.stdio;

void main() {
    long t;
    readf("%s\n", &t);

while(t--) {
    long n, U, R, D, L;
    readf("%s %s %s %s %s\n", &n, &U, &R, &D, &L);
    bool found = false;
    for(int mask = 0; mask < (1 << 4); mask++) {
        long up     = U;
        long right  = R;
        long down   = D;
        long left   = L;
        if(mask & (1 << 0)) {
            up -= 1;
            left -= 1;
        }
        if(mask & (1 << 1)) {
            left -= 1;
            down -= 1;
        }
        if(mask & (1 << 2)) {
            down -= 1;
            right -= 1;
        }
        if(mask & (1 << 3)) {
            right -= 1;
            up -= 1;
        }
        if((up >= 0 && right >= 0 && down >= 0 && left >= 0) &&
          (up <= n - 2 && right <= n - 2 && down <= n - 2 && left <= n - 2)) {
            found = true;
            break;
        }
    }
    if(found)
        "YES".writeln;
    else
        "NO".writeln;
}
}
