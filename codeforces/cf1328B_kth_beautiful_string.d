// https://codeforces.com/problemset/problem/1328/B
// greedy
import std.stdio;
import std.string;
import std.conv;

void main() {
    int t = readln.chomp.to!int;

    int n, k;
    foreach(kase; 0..t) {
        readf("%d %d\n", &n, &k);

        char[] ans = "".dup;

        foreach(ch; 0..n) ans ~= "a";

        for(int idx = n-2; idx >= 0; idx--) {
            if(k <= (n-idx-1)) {
                ans[idx] = 'b';
                ans[n-k] = 'b';
                break;
            }
            k -= n-idx-1;
        }
        ans.writeln;
    }
}

