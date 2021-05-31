// Vicfred
// https://atcoder.jp/contests/abc126/tasks/abc126_c
// math
import std.stdio;
import std.math;

void main() {
    real n, k;
    readf("%s %s\n", &n, &k);

    real ans = 0.0;
    for(int dice = 1; dice <= n; dice++) {
        const real steps = ceil(log2(k/dice));
        real prob = (1.0/n);
        if(dice < k)
            prob *= (1.0/2.0)^^steps;
        ans += prob;
    }
    writefln("%.15f", ans);
}
