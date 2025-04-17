// vicfred
// https://codeforces.com/contest/1542/problem/B
// math, greedy
import std.container;
import std.stdio;

void main() {
    int t;
    readf("%s\n", &t);

while(t--) {
    long n, a, b;
    readf("%s %s %s\n", &n, &a, &b);
    if(a == 1L) {
        if((n - 1L) % b == 0L)
            "Yes".writeln;
        else
            "No".writeln;
        continue;
    }
    auto powers = new RedBlackTree!(long,"a > b");
    powers.insert(1L);
    while(powers.front <= n) {
        powers.insert(powers.front * a);
    }
    if(powers.front > n)
        powers.removeFront;
    n = n % b;
    bool found = false;
    while(!powers.empty) {
        if(powers.front % b == n)
            found = true;
        powers.removeFront;
    }
    if(found)
        "Yes".writeln;
    else
        "No".writeln;
}
}
