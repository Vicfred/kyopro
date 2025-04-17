// vicfred
// https://atcoder.jp/contests/abc127/tasks/abc127_c
// implementation, greedy
import std.algorithm;
import std.array;
import std.conv;
import std.stdio;
import std.string;

void main() {
    int n, m;
    readf("%s %s\n", &n, &m);

    int maxleft = -1;
    int minright = int.max;
    foreach(i; 0..m) {
        int left, right;
        readf("%s %s\n", &left, &right);
        maxleft = max(maxleft, left);
        minright = min(minright, right);
    }

    int ans = minright - maxleft + 1;
    if(minright < maxleft) ans = 0;
    ans.writeln;
}

