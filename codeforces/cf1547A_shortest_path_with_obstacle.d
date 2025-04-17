// vicfred
// https://codeforces.com/contest/1547/problem/A
// math
import std.algorithm;
import std.stdio;

int abs(int x) {
    return x < 0 ? -x : x;
}

void main() {
    int t;
    readf("%s\n", &t);

while(t--) {
    int xa, ya, xb, yb, xf, yf;
    readf("\n%s %s\n%s %s\n%s %s\n", &xa, &ya, &xb, &yb, &xf, &yf);
    int ans = abs(xa - xb) + abs(ya - yb);
    if(xa == xb && xb == xf && yf < max(ya, yb) && yf > min(ya, yb)) {
        ans += 2;
    }
    if(ya == yb && yb == yf && xf < max(xa, xb) && xf > min(xa, xb)) {
        ans += 2;
    }
    ans.writeln;
}
}
